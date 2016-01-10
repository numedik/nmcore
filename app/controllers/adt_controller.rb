class AdtController < ApplicationController

  #before_filter :doorkeeper_authorize!

  def admit
    ActiveRecord::Base.transaction do
      rs = Treatment.new

      rs.patient_id = params[:patient_id]
      rs.patienttype_id = params[:patienttype_id]
      rs.registrar_id = current_user.id
      rs.plan_id = params[:plan_id]
      rs.discipline_id = params[:discipline_id]
      rs.doctor_id = params[:doctor_id]
      rs.legalcase = params[:legalcase]

      rs.save!
      #save workflow. xsettle lagi
      params['workflow'].each_with_index do |wk, i|
        wf = Workflow.new
        wf.treatment_id = rs.id
        wf.workorder_id = wk
        wf.sequenceorder = i
        wf.assigner_id = rs.registrar_id

        wf.save
      end
      #after register new treatment, init record to active queue list
      queue = Workflow.init_queue(rs.id)
      
      render :json => queue
    end
  end

  def list_active_patient
    rsx = Hash.new
    Workorder.order(:id).each do |wo| rsx[wo.name] = Array.new end

    Activequeue.all.each do |rs|
      rsx[rs.workordercurrent ].push rs
    end

    render :json => rsx
  end

  def sign_patient
    aq = Activequeue.find(params[:tid])
    if aq.clismodule == params[:clismodule]

      wf = Workflow.find(aq.currentworkflow_id)
      case params[:signaction]
        when 'in'
          wf.sign_in_patient
          wf.save

          aq.statprev = aq.statcurrent
          aq.statcurrent = wf.workflowstat.name
          aq.save
          render :json => aq

        when 'off'
          wf.sign_off_patient
          wf.save

          aq.workorderprev = aq.workordercurrent
          aq.statprev = aq.statcurrent

          #dapatkan next workorder
          newwf = Workflow.get_next_workorder(params[:tid])
          if !newwf.nil?
            #kalau ada next WO, set params
            aq.workordercurrent = newwf.workorder.name
            aq.statcurrent = newwf.workflowstat.name
            aq.workflow_id = newwf.id
            aq.clismodule = newwf.workflow.clismodule
            aq.save
            render :json => aq
          else
            #kalau xde next WO, delete ajo dari Activequeue

            tmp = aq
            tmp.clismodule = 'RN' #temporary set to RN for discharge

            aq.delete
            render :json => tmp
          end

      end

    else
          render :json => {:stat =>'Not Valid', :params => params}

    end
  end

  def get_current_patient_info
    tid = Treatment.find params[:tid]

    render json: tid, 
      include: [
        :patient, :plan, :patienttype, :discipline, :treatmentstat, :currentworkorder,
        :workflowstat
      ]
  end
end

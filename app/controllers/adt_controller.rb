class AdtController < ApplicationController

  #before_filter :doorkeeper_authorize!

  def admit
    
    ActiveRecord::Base.transaction do
      rs = Treatment.new

      rs.patient_id = params[:patient_id]
      rs.patienttype_id = params[:patienttype_id]
      rs.registrar_id = params[:registrar_id]
      rs.plan_id = params[:plan_id]
      rs.discipline_id = params[:discipline_id]
      rs.doctor_id = params[:doctor_id]
      rs.legalcase = params[:legalcase]

      rs.save
      #save workflow. xsettle lagi
      
      params['workflow'].split(',').each_with_index do |wk, i|
        wf = Workflow.new
        wf.treatment_id = rs.id
        wf.workorder_id = wk
        wf.sequenceorder = i
        wf.assigner_id = rs.registrar_id

        wf.save
      end
    
      #after register new treatment, init record to active queue list
      Workflow.init_queue(rs.id)
      
      render :json => { status: 'success', treatment_id: rs.id, sn: rs.sn }
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
end

class LookupController < ApplicationController

  # this will filter the request (checks for access_code)
  before_action -> { doorkeeper_authorize! :public }, only: :index
  before_action only: [:create, :update, :destroy] do
    doorkeeper_authorize! :admin, :write
  end
  
  def index
    respond_with current_resource_owner
  end

  def bulkrequest
    @res = {}
    @models = params[:res].split(',')
    params[:requesttype] = :bulk
    @models.each do |res|
      params[:lookupmodel] = res
      @res[res.to_sym] = dblookup
    end
    render formats: :json
  end
  
  def dblookup

    case params[:lookupmodel]
    when 'workorder'
        @rs = Workorder.all

    when 'patienttype'
        @rs = Patienttype.all

    when 'gender'
        @rs = Gender.all

    when 'nationality'
        @rs = Nationality.all

    when 'religion'
        @rs = Religion.all

    when 'marital'
        @rs = Marital.all

    when 'race'
        @rs = Race.all

    when 'bloodtype'
        @rs = Bloodtype.all

    when 'state'
        @rs = State.all

    when 'designation'
        @rs = Designation.all

    when 'rnstat'
        @rs = Rnstat.all

    when 'accounttype'
        @rs = Accounttype.all

    when 'plan'
        @rs = Plan.all

    when 'patientstat'
        @rs = Patientstat.all

    when 'city'
        @rs = City.all

    when 'treatmentstat'
        @rs = Treatmentstat.all

    when 'discipline'
        @rs = Discipline.all

    when 'pricetype'
        @rs = Pricetype.all

    when 'chargegroup'
        @rs = Chargegroup.all

    when 'billingstat'
        @rs = Billingstat.all

    when 'billitemstat'
        @rs = Billitemstat.all

    when 'postat'
        @rs = Postat.all

    when 'store'
        @rs = Store.all

    when 'drugtype'
        @rs = Drugtype.all

    when 'drugstrength'
        @rs = Drugstrength.all

    when 'drugroute'
        @rs = Drugroute.all

    when 'drugdosage'
        @rs = Drugdosage.all

    when 'inventorytype'
        @rs = Inventorytype.all

    when 'drugprocedure'
        @rs = Drugprocedure.all

    when 'treatmentnotetype'
        @rs = Treatmentnotetype.all

    when 'workflowtemplate'
        @rs = Workflowtemplate.all

    when 'workflowtemplateitem'
        @rs = Workflowtemplateitem.includes(:workorder)
        if params[:tplid]
          @rs = @rs
            .where( workflowtemplate_id: params[:tplid] )
        end
        
        @rs = @rs.each.map do |tplitem| { 
          id: tplitem.id, 
          workflowtemplate_id: tplitem.workflowtemplate_id,
          workorder: tplitem.workorder, 
          sequence: tplitem.sequence,
          created_at: tplitem.created_at,
          updated_at: tplitem.updated_at
        } end
        
    when 'workflowstat'
        @rs = Workflowstat.all

    when 'role'
        @rs = Role.all

    when 'userstat'
        @rs = Userstat.all

    when 'department'
        @rs = Department.all

    when 'vendor'
        @rs = Vendor.all

    when 'labitem'
      @rs = Labitem.all

    when 'labtemplate'
        @rs = Labtemplate.all

    when 'gstcode'
        @rs = Gstcode.all
    
    when 'doctor'
      @rs = User.where(:role_id=>Role.where(:code => 'MD').first.id, :userstat_id=>Userstat.where(:code=>'A').first.id)

    when 'activepatient'
      rsx = Hash.new
      Workorder.order(:id).each do |wo| rsx[wo.name] = Array.new end

      Activequeue.all.each do |rs|
        rsx[rs.workordercurrent ].push rs
      end
      
      @rs = rsx
    end
    
    if params[:requesttype] == :bulk
      return @rs
    else
      render formats: :json
    end
  end
end

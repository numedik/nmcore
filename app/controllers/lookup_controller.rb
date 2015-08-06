class LookupController < ApplicationController
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
        @rs = Workflowtemplateitem.all
      
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
      
    end
    
    render formats: :json
  end
end
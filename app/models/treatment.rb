class Treatment < ActiveRecord::Base
  belongs_to :treatmentnote
  has_many :workflows
  belongs_to :labrequest
  belongs_to :billing
  belongs_to :plan
  belongs_to :treatmentstat

  belongs_to :discipline
  belongs_to :patient
  belongs_to :patienttype

  belongs_to :doctor, :foreign_key => :doctor_id, :class => :user
  belongs_to :registrar, :foreign_key => :registrar_id, :class => :user

  before_create :init_default
  before_destroy 'self.class.delete_all "treatment_id = #{id}"'

  private
    def init_default
      run2 = Runningnumber.where(:code=>'SN').first

      self.sn = "#{run2.running+1}/#{Time.now.strftime('%y')}"
      self.treatmentstat_id = Treatmentstat.where(:code=>'N').first.id

      run2.running += 1
      run2.save
    end


end

class Patient < ActiveRecord::Base

include ActiveModel::Dirty
  attr_accessible :addr1, :addr2, :allergy, :birthcert, :bloodtype_id, :city, :dob, :email, :fullname, :gender_id, :info, :marital_id, :medicalrecord, :mrn, :mykadno, :nationality_id, :occupation, :panel_id, :passport, :patientstat_id, :phone, :postcode, :race_id, :religion_id, :state_id, :designation_id, :rnstat_id, :rntype_id
  default_scope :order => 'fullname ASC'
  
  belongs_to :bloodtype
  belongs_to :gender
  belongs_to :state
  belongs_to :panel
  belongs_to :nationality
  belongs_to :religion
  belongs_to :marital
  belongs_to :race
  belongs_to :patientstat
  belongs_to :designation
  belongs_to :rnstat
  belongs_to :rntype
  has_many :treatments
  has_many :roomreservations
  has_many :audittrail
  has_one :contact
  
  has_one :mykadrecord , :class_name => "MykadRecord", :foreign_key => :nokp, :primary_key => :mykadno
  #before_create :gen_mrn_mykad

  public
    def gen_mrn_mykad
    
    #time = Time.new
    #year = time.year.to_s[-2,2]
    #mon  = time.month
    #mon = "0#{mon}" if mon < 10
    #ic = params[:ic][-4,4]
    #maxmrn = Patient.maximum("mrn")
    #lp = Patient.where("mrn = '#{maxmrn}'").last
    running = Runningnumber.find_by_code('MRN')
    #render :text => running
    running.running += 1
      #running = running.to_s.rjust(6, "0")

      running.save
	  #set running number for KBMC 6digit only.
      #self.mrn = "#{I18n.t(:his_config_mrn)}#{year}#{mon}#{running.running.to_s}"
      self.mrn = "#{running.running.to_s}"
    
    #nokprunning = Runningnumber.find_by_code("MYKAD")
    #nokprunning.running+=1
    #self.mykadno = "XX#{nokprunning.running}" if self.mykadno.nil?
    #nokprunning.save
  end
  public
  def gen_mrn_retail

    running = Runningnumber.find_by_code('RETAILS')
    running.running += 1

    running.save
    self.mrn = "#{running.running.to_s}"
  end

  public
  	def name 
  	fullname
  end

  public
  def age
    if [dob.to_date.day, dob.to_date.month, Time.now.year].join('/').to_date > Time.now.to_date
      (Time.now.year - dob.to_date.year) - 1
    else
      (Time.now.year - dob.to_date.year)
    end
  end
  
  public
  def age_in_words
  	  Patient.where(:id=>"#{self.id}").pluck('age(dob)').first ? Patient.where(:id=>"#{self.id}").pluck('age(dob)').first : '-'
  end

end

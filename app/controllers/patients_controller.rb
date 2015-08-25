class PatientsController < ApplicationController
  def index
    @patient = Patient.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @patient }
    end
  end

  def show
    @patient = Patient.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @patient }
    end
  end

  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    params.permit!
    @patient = Patient.create(patient_params)
    
    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @patient }
      else
        format.html { render :new }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @patient.update(Patient_params)
        format.html { redirect_to @patient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patient_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_patient
  end

  def search_patient_autosuggest
  end

  def load_mykad_picture
  end

  def print_detail_patient
  end

  def save_detail_patient
  end
  
  private

  def patient_params
    params.require(:patient).permit(:mrn, :mykadno, :oldic,:passport,:birthcert,:fullname,:gender_id,:add1,:add2,:add3,:city,:postcode,:state_id,:nationality_id,:homephone,:mobilephone,:email,:dob,:defaultplan_id,:defaultaccount_id,:profession,:employer,:employerphone,:religion_id,:marital_id,:race_id,:bloodtype_id,:patientstat_id,:remarkgeneral,:remarkallergy,:remarkmedicalhistory,:remarkfamilyhistory,:rnstat_id ,:designation_id,:relativename,:relationname,:relativerelation,:relativeadd,:relativetel,:registrat_id)
  end

end

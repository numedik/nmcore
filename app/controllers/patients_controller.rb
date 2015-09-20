class PatientsController < ApplicationController

  before_filter :doorkeeper_authorize!

  def search_patient
  end

  def search_bar
    @rs = Patient.search params[:searchkeyword], :load => true

    render format: :json
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

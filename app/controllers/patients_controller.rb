class PatientsController < ApplicationController
  def index
    @patient = Patient.all
  end

  def show
  end

  # GET /users/new
  def new
    @patient = Patient.new
  end

  def edit
  end

  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: 'Patient was successfully created.' }
        format.json { render :show, status: :created, location: @patient }
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

  def register_new_patient
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

end

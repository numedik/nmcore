class TreatmentsController < ApplicationController
  def index
    @treatment = Treatment.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @warehouse }
    end
  end

  def show
  end

  def new
    @treatment = Treatment.new
  end

  def edit
  end

  def create
    @treatment = Treatment.new(Treatment_params)

    respond_to do |format|
      if @treatment.save
        format.html { redirect_to @treatment, notice: 'Treatment was successfully created.' }
        format.json { render :show, status: :created, location: @treatment }
      else
        format.html { render :new }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @treatment.update(Treatment_params)
        format.html { redirect_to @treatment, notice: 'Treatment was successfully updated.' }
        format.json { render :show, status: :ok, location: @treatment }
      else
        format.html { render :edit }
        format.json { render json: @treatment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @treatment.destroy
    respond_to do |format|
      format.html { redirect_to Treatment_url, notice: 'Treatment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def active_treatment_Treatment
  end

  def list_past_treatment
  end

  def sign_in_Treatment
  end

  def sign_off_Treatment
  end

  def refer_doctor
  end
end

class LabsController < ApplicationController
  def index
    @lab = Labresult.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @lab }
    end
  end

  def show
  end

  def new
    @lab = Labresult.new
  end

  def edit
  end

  def create
    @lab = Labresult.new(lab_params)

    respond_to do |format|
      if @lab.save
        format.html { redirect_to @lab, notice: 'Lab was successfully created.' }
        format.json { render :show, status: :created, location: @lab }
      else
        format.html { render :new }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @lab.update(Lab_params)
        format.html { redirect_to @lab, notice: 'Lab was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab }
      else
        format.html { render :edit }
        format.json { render json: @lab.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @lab.destroy
    respond_to do |format|
      format.html { redirect_to lab_url, notice: 'Lab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

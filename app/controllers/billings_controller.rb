class BillingsController < ApplicationController
  def index
    @billing = Billing.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @billing }
    end
  end

  def show
  end

  def new
    @billing = Billing.new
  end

  def edit
  end

  def create
    @billing = Billing.new(billing_params)

    respond_to do |format|
      if @billing.save
        format.html { redirect_to @billing, notice: 'Billing was successfully created.' }
        format.json { render :show, status: :created, location: @billing }
      else
        format.html { render :new }
        format.json { render json: @billing.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @billing.update(Billing_params)
        format.html { redirect_to @billing, notice: 'Billing was successfully updated.' }
        format.json { render :show, status: :ok, location: @billing }
      else
        format.html { render :edit }
        format.json { render json: @billing.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @billing.destroy
    respond_to do |format|
      format.html { redirect_to billing_url, notice: 'Billing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

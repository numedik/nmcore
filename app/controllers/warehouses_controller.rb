class WarehousesController < ApplicationController

  def search_bar
    @rs = Inventory.search params[:searchkeyword], :load => true
    render format: :json
  end
  
  def index
    @warehouse = Warehouse.all
    
    respond_to do |format|
      format.html 
      format.json { render json: @warehouse }
    end
  end

  def show
  end

  def new
    @warehouse = Warehouse.new
  end

  def edit
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    respond_to do |format|
      if @warehouse.save
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully created.' }
        format.json { render :show, status: :created, location: @warehouse }
      else
        format.html { render :new }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @warehouse.update(Warehouse_params)
        format.html { redirect_to @warehouse, notice: 'Warehouse was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse }
      else
        format.html { render :edit }
        format.json { render json: @warehouse.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @warehouse.destroy
    respond_to do |format|
      format.html { redirect_to warehouse_url, notice: 'Warehouse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end

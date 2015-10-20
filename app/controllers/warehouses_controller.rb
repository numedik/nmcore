class WarehousesController < ApplicationController

  def search_bar
    @rs = Inventory.search params[:searchkeyword], :load => true
    render format: :json
  end
  
end

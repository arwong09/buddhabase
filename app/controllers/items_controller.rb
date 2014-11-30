class ItemsController < ApplicationController
  def index
    @items = Item.all
    render "items/index"
  end

  def show
  end

  def create
    @item = Item.new(item_params)
    @item.generate_new_sku
    if @item.save!
      respond_to do |format|
        format.json { head :ok }
      end
    else
      render :new
    end
  end

  def new
    @item = Item.new
    render :new
  end

  def destroy
    item = Item.find(params[:id])
    item.try(:destroy)
    
    respond_to do |format|
      format.json { head :ok }
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :quantity, :category, :description)
  end
end

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
      redirect_to new_item_url
    else
      render :new
    end
  end

  def new
    @item = Item.new
    render :new
  end

  def destroy
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :quantity, :category, :description)
  end
end

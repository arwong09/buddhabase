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
      render json: @item
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

    render status: :ok
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :category, :description)
  end
end

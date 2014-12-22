class Api::Inventory::ItemsController < ApplicationController
  def index
    render json: build_response_hash
  end

  def create
    item = Item.new(item_params)
    item.generate_new_sku

    if item.save!
      render json: item
    else
      render json: item, status: :unprocessable_entity
    end
  end

  def update
    item = Item.find(params[:id])
    if item.update_attributes(image: params[:image])
      render json: { success: true }, status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  def destroy
    item = Item.find(params[:id])

    if item.destroy
      render json: item, status: :ok
    else
      render json: item, status: :unprocessable_entity
    end
  end

  private

  def build_response_hash
    items.map do |item|
      item.attributes.merge(image_url: item.image(:medium))
    end
  end

  def item_params
    params.require(:item).permit(:name, :quantity, :category, :description, :image)
  end

  def items
    @items ||= Item.all
  end
end

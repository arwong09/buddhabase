class Api::Storefront::ItemsController < ApplicationController
  def index
    render json: build_response_hash
  end

  private

  def build_response_hash
    # first = params[:start].to_i
    # last = first + params[:limit].to_i - 1
    # items = Item.where(id: first..last)
    items = Item.where(id: 78..82)
    items.map do |item|
      item.attributes.merge(image_url: item.image.url)
    end
  end

  def item_params
    params.require(:item).permit(:start, :limit)
  end

  def items
    @items ||= Item.all
  end
end

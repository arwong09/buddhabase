module Api
  class ItemsController < ApplicationController
    def index
      items = Item.all

      render json: items
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

    def destroy
      item = Item.find(params[:id])

      if item.destroy
        render json: item, status: :ok
      else
        render json: item, status: :unprocessable_entity
      end
    end

    private

    def item_params
      params.require(:item).permit(:name, :quantity, :category, :description)
    end
  end
end

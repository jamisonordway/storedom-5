class Api::V1::ItemsController < Api::V1::ApplicationController

  def index
    # binding.pry
    items = Item.all
    render json: items
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  def destroy
    # render json: Item.destroy(params[:id])
    item = Item.find(params[:id])
    render status: 204, json: {'message' => 'destroyed'}
  end
end
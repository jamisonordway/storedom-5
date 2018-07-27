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

  def create
    item = Item.create(item_params)
    render status: 201, json: { 'message' => 'created' }
  end

  private

  def item_params
    params.permit(:id, :name, :description, :image_url, :updated_at, :created_at)
  end
end
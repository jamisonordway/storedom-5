class Api::V1::ItemsController < Api::V1::ApplicationController

  def index
    binding.pry
    items = Item.all
    render json: items
  end
end
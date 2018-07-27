class Presenter

  def initialize(params)
    @params = params
    @best_buy_service = BestBuyService.new
  end

  def nearby_stores
    stores = Result.new(@best_buy_service.get_stores(zip))
    # binding.pry
  end

  def zip
    @params[:search]
  end
end
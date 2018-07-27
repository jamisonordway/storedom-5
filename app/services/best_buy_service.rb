class BestBuyService

  def initialize
    # binding.pry
    @base_url = Faraday.new('https://api.bestbuy.com')
    @api_key = ENV['api_key']
  end

  def get_stores(zip)
    response = @base_url.get("/v1/stores?format=json&show=storeId,storeType,name&pageSize=2?apiKey=#{@api_key}&postalCode=#{zip}")
    raw_data = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end
end
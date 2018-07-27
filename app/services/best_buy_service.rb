class BestBuyService

  def initialize
    # binding.pry
    @base_url = Faraday.new('https://api.bestbuy.com')
    @api_key = ENV['api_key']
  end

  def get_stores(zip)
    response = @base_url.get("/v1/stores?apiKey=#{@api_key}&postalCode=#{zip}")
    binding.pry
    raw_data = JSON.parse(response.body, symbolize_names: true)
  rescue JSON::ParserError
    []
  end
end
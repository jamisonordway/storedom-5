class BestBuyService

  def initialize
    # binding.pry
    @base_url = Faraday.new('https://api.bestbuy.com')
  end

  def get_stores(zip)
    response = @base_url.get("/v1/stores?apiKey=&postalCode=#{zip}") do |request|
    binding.pry
      request.headers['apiKey'] = ENV['api_key']
    end
    JSON.parse(response.body)
  end
end
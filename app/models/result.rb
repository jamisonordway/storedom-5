class Result

  def initialize(response_data)
    @data = response_data
  end
  
  def stores_near_zip
    new_data = @data
  end
  # binding.pry
  new_data.map do |new_data|
    Store.new(new_data)
end

end
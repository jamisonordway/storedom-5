class Result

  def initialize(response_data)
    binding.pry
    @data = response_data
  end

  def stores_near_zip
    new_data = @data
  end

end
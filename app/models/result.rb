class Result

  def initialize(response_data)
    @data = response_data
  end
  
  def stores_near_zip
    all_stores_data = @data["stores"]
    binding.pry
    all_stores_data.map do |data|
    Store.new(new_data)
    end
end

end
class Result

  def initialize(response_data)
    @data = response_data
  end
  
  def stores_near_zip
    all_stores_data = @data[:stores]
    all_stores_data.map do |data|
       Store.new(data)
    end
end

end
class Store
  attr_reader :long_name, :city, :distance, :phone, :store_type

  def initialize(store_data)
    @long_name = store_data[:name]
    @city = store_data[:city]
    @distance = store_data[:distance]
    @phone = store_data[:phone]
    @store_type = store_data[:storeType]
  end
end
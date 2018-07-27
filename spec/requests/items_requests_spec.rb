require 'rails_helper'

RSpec.describe 'Item Requests' do
 
  context 'GET /api/v1/items' do 
    it 'should return expected item data for all items' do
      item_1 = Item.create!(id: 1, name: "item name", description: "description", image_url: 'url', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')
      item_2 = Item.create!(id: 2, name: "item is thing", description: "tell me all about it", image_url: 'url2', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')
      get '/api/v1/items'
      
      response_data = JSON.parse(response.body)
      # expected_data = JSON.parse(item_data)
      # binding.pry
      expect(response).to be_successful
      expect(response.status).to eq(200)
    end
  end
  context 'GET /api/v1/items/1' do
    it 'should return expected item data for correct item' do
      item_1 = Item.create!(id: 1, name: "item name", description: "description", image_url: 'url', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')
      item_2 = Item.create!(id: 2, name: "item is thing", description: "tell me all about it", image_url: 'url2', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')
      get '/api/v1/items/1'

      response_data = JSON.parse(response.body)

      expect(response).to be_successful
      expect(response.status).to eq(200)
      # expect(response_data).to_not have_content("item is thing")
    end
  end
  context 'DELETE /api/v1/items/1' do
    it 'should return a 204 JSON response to indicate the item was successfully deleted' do
      item_1 = Item.create!(id: 1, name: "item name", description: "description", image_url: 'url', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')
      item_2 = Item.create!(id: 2, name: "item is thing", description: "tell me all about it", image_url: 'url2', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')

      delete '/api/v1/items/1'

    
      expect(response.status).to eq(204)
    end
  end
end
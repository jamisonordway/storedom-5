require 'rails_helper'

RSpec.describe 'Item Requests' do
  let(:item_data) { File.read('spec/fixtures/item.json') }
  let(:updated_item_data) { File.read('spec/fixtures/updated_item.json') }

  context 'GET /api/v1/items' do 
    it 'should return expected item data' do
      get '/api/v1/items'
      # item_1 = Item.create!(id: 1, name: "item name", description: "description", image_url: 'url', created_at: '2011-07-14T19:43:37+0100', updated_at: '2011-07-14T19:43:37+0100')

      response_data = JSON.parse(response.body)
      expected_data = JSON.parse(item_data)
      # binding.pry
      expect(response).to be_successful
      expect(response_data).to eq(expected_data)
    end
  end
end
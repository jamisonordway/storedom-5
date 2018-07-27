require 'rails_helper'

RSpec.describe 'Item Requests' do
  let(:item_data) { File.read('spec/fixtures/item.json') }
  let(:updated_item_data) { File.read('spec/fixtures/updated_item.json') }

  context 'GET /api/v1/items' do 
    it 'should return expected item data' do
      get '/api/v1/items'

      response_data = JSON.parse(response.body)
      expected_data = JSON.parse(item_data)

      expect(response).to be_successful
      expect(response_data).to eq(expected_data)
    end
  end
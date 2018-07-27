require 'rails_helper'
# As a user
# When I visit "/"
# And I fill in a search box with "80202" and click "search"
# Then my current path should be "/search" (ignoring params)
# And I should see stores within 25 miles of 80202
# And I should see a message that says "14 Total Stores"
# And I should see exactly 10 results (There are 14 stores within 25 miles. We want to display 10 on this page and 4 on the next. Get the first page to work first from start to finish and worry about pagination later.)
# And I should see the long name, city, distance, phone number and store type for each of the 10 results

context 'visitor' do
  describe 'searches for a store in a valid zip code' do
    it 'should return all stores within 25 miles with store information' do
      visit '/'

      fill_in :search, with: "80202"
      click_on "Search"
      expect(current_path).to eq('/search')
      expect(page).to have_content("14 Total Stores")
    end
  end
end
require 'spec_helper'

feature 'DatabaseServer' do
  feature 'Setup' do
    scenario 'on custom port 400, status is 200' do
      visit 'http://localhost:4000'
      expect(page.status_code).to be(200)
    end
  end

  feature 'Input' do
    scenario 'page can be accessed' do
      visit 'http://localhost:4000/set?somekey=somevalue'
      expect(page.status_code).to be(200)
    end
  end

  feature 'Output' do
    scenario 'value can be retreived' do
      visit 'http://localhost:4000/set?somekey=somevalue'
      visit 'http://localhost:4000/get?key=somekey'
      expect(page).to have_content('somevalue')
    end
  end
end

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
end

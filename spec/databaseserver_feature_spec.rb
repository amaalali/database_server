require 'spec_helper'

feature 'DatabaseServer' do
  feature 'on custom port 400' do
    scenario 'status is 200' do
      visit 'http://localhost:4000'
      expect(page.status_code).to be(200)
    end
  end

end

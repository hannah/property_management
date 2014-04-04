require 'spec_helper'

feature 'associating house and owners', %Q{
  As a real estate associate
  I want to correlate an owner with buildings
  So that I can refer back to pertinent information
} do

# When recording a building, I want to optionally associate the building with its rightful owner.
# If I delete an owner, the owner and its primary key should no longer be associated with any properties.

 scenario 'new valid house is associated with owner' do
  visit 'buildings/new'
  fill_in 'Street address', with: "123 Sesame Street"
  fill_in 'City', with: "Anytown"
  fill_in 'State', with: "Washington"
  fill_in 'Owner', with: "Big Bird"


  click_on 'Create Building'
  expect(page).to have_content("123 Sesame Street")
 end

end

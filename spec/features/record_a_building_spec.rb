require 'spec_helper'

feature 'record a new building', %Q{
  As a real estate associate
  I want to record a building
  So that I can refer back to pertinent information
} do

#Acceptance Criteria
# I must specify a street address, city, state, and postal code
# Only US states can be specified
# I can optionally specify a description of the building
# If I enter all of the required information in the required format, the building is recorded.
# If I do not specify all of the required information in the required formats, the building is not recorded and I am presented with errors
# Upon successfully creating a building, I am redirected so that I can record another building.

  scenario 'new valid building is created' do
    visit 'buildings/new'
    fill_in 'Street address', with: "123 Sesame Street"
    fill_in 'City', with: "Anytown"
    fill_in 'State', with: "Washington"

    click_on 'Create Building'
    expect(page).to have_content("Building created successfully!")
  end

  scenario 'new invalid building is created' do
    visit 'buildings/new'
    fill_in 'Street address', with: ''
    fill_in 'City', with: ''
    fill_in 'State', with: ''

    click_on 'Create Building'
    expect(page).to have_content("can't be blank")
  end

end

require 'spec_helper'

feature 'record a building owner', %Q{
  As a real estate associate
  I want to record a building owner
  So that I can keep track of our relationships with owners
} do

# I must specify a first name, last name, and email address
# I can optionally specify a company name
# If I do not specify the required information, I am presented with errors
# If I specify the required information, the owner is recorded and I am redirected to enter another new owner

  scenario 'new valid owner is created' do
    visit 'owners/new'
    fill_in "First name", with: 'Big'
    fill_in "Last name", with: "Bird"
    fill_in "Email", with: "big_bird@sesame.com"

    click_on 'Create Owner'
    expect(page).to have_content("Owner Created!")
  end

  scenario 'a new invalid owner is created' do
    visit 'owners/new'
    fill_in "First name", with: ''
    fill_in 'Last name', with: ''
    fill_in 'Email', with: ''

    click_on "Create Owner"
    expect(page).to have_content("can't be blank")
  end
end

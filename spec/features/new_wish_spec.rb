require 'rails_helper'

feature 'User creates a new wish' do
  
  scenario 'they fill in the form to create a new wish' do
    visit new_wish_path
    fill_in 'Title', with: 'A great new idea!'
    fill_in 'Description', with: 'Some wonderful explanation'
    click_on 'Create Wish'
    expect(page).to have_css '.wish-title', 'A great new idea!'
  end
  
  scenario 'they can omit a description' do
    visit new_wish_path
    fill_in 'Title', with: 'A great new idea!'
    click_on 'Create Wish'
    expect(page).to have_css '.wish-title', 'A great new idea!'
  end
  
  scenario 'it displays a success confirmation message' do
    success_message = 'Wish was successfully updated.'
    skip "You all are going to implement this."
  end
  
  # Test the unhappy path
  
  scenario 'they get an error if they omit the title' do
    visit new_wish_path
    click_on 'Create Wish'
    within '#error_explanation' do
      expect(page).to have_content "Title can't be blank"
    end
  end
  
end
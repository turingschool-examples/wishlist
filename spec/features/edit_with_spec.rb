require 'rails_helper'

feature 'User edits an existing wish' do

  background :each do
    @wish = Wish.create(title: 'More snow', description: 'I enjoy scraping ice off my car.')
  end

  scenario 'they fill in the form to update a wish' do
    visit edit_wish_path(@wish)
    fill_in 'Title', with: 'A great new idea!'
    fill_in 'Description', with: 'Some wonderful explanation'
    click_on 'Update Wish'
    expect(page).to have_css '.wish-title', 'A great new idea!'
  end

  scenario 'they can omit a description' do
    visit new_wish_path
    fill_in 'Title', with: 'A great new idea!'
    click_on 'Create Wish'
    expect(page).to have_css '.wish-title', 'A great new idea!'
  end

  scenario 'they can go back to viewing the wish' do
    skip "You are going to implement this."
  end

  scenario 'they can go back the index of wishes' do
    skip "You are going to implement this."
  end

  scenario 'it displays a success confirmation message' do
    success_message = 'Wish was successfully updated.'
    skip "You are going to implement this."
  end

  # Test the unhappy path

  scenario 'they get an error if they remove the title' do
    skip "You are going to implement this."
  end

end
require 'rails_helper'

feature 'User visits the main page' do

  scenario 'they see a welcome message' do
    visit root_path
    expect(page).to have_content 'Welcome to the Wishlist'
  end
  
  scenario 'they can click a link to see the wishes' do
    visit root_path
    page.click_on 'See the list'
    expect(current_path).to eq wishes_path
  end

end
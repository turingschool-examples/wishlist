require 'rails_helper'

feature 'User visits an individual wish' do

  let(:wish) { Wish.create(title: 'Win the lottery', description: 'Lorem ipsum dolor…') }

  scenario 'it displays the title of their wish' do
    visit wish_path(wish)
    expect(page).to have_css '.wish-title', 'Win the lottery'
  end

  scenario 'it displays a description of their wish' do
    visit wish_path(wish)
    expect(page).to have_css '.wish-description', 'Lorem ipsum dolor…'
  end

  scenario 'they see a link back to the index' do
    visit wish_path(wish)
    expect(page).to have_css 'a', 'Edit'
  end

  scenario 'they see a link back to the index' do
    visit wish_path(wish)
    expect(page).to have_css 'a', 'Back'
  end

  scenario 'they can edit a wish' do
    skip
  end

  scenario 'they can go back to the index' do
    skip
  end

  scenario 'they can remove a wish' do
    skip
  end

end
require 'rails_helper'

feature 'User visits the wish index' do
  
  background :each do
    @wish = Wish.create(title: 'Win the lottery', description: 'Lorem ipsum dolor…')
    Wish.create(title: 'Eat a sandwich', description: 'Lorem ipsum dolor…')
    Wish.create(title: 'Win a sandwich', description: 'Lorem ipsum dolor…')
    Wish.create(title: 'Eat a lottery ticket', description: 'Lorem ipsum dolor…')
  end
  
  scenario 'they see an ordered list of wishes' do
    visit wishes_path
    expect(page).to have_css 'ol.wishes'
  end
  
  scenario 'they see individual wishes' do
    visit wishes_path
    expect(page).to have_css '.wish', 'Win the lottery'
    expect(page).to have_css '.wish', 'Eat a sandwich'
    expect(page).to have_css '.wish', 'Win a sandwich'
    expect(page).to have_css '.wish', 'Eat a lottery ticket'
  end
  
  scenario 'they can click on a wish to see more detail' do
    visit wishes_path
    page.click_link @wish.title
    expect(current_path).to eq wish_path(@wish)
  end
  
  scenario 'they can click a link to create a new wish' do
    visit wishes_path
    expect(page).to have_css 'a', 'New Wish'
    click_on 'New Wish'
    expect(current_path).to eq new_wish_path
  end

end
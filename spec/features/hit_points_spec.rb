require 'spec_helper'

feature 'Hit points' do
  scenario 'displays the opponents hit points' do
    visit('/')
    fill_in(:player_1, with: 'Almighty Tom')
    fill_in(:player_2, with: 'Incredible Yev')
    click_button 'Submit'
    expect(page).to have_content 'Incredible Yev: 100HP'
  end
end
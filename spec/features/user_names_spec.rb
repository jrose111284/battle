require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in(:player_1, with: 'Almighty Tom')
    fill_in(:player_2, with: 'Incredible Yev')
    click_button 'Submit'
    expect(page).to have_content 'Almighty Tom vs. Incredible Yev'
  end
end
require 'spec_helper'

feature 'Attacking' do
  scenario 'attacks player 2 and receives confirmation' do
    sigh_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Almighty Tom attacks Incredible Yev!'
  end
end
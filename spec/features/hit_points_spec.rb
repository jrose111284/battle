require 'spec_helper'

feature 'Hit points' do
  scenario 'displays the opponents hit points' do
    sigh_in_and_play
    expect(page).to have_content 'Incredible Yev: 100HP'
  end
  scenario 'reduces the opponents hit points after being attacked' do
    sigh_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to have_content 'Incredible Yev: 90HP'
  end

end
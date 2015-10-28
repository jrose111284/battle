require 'spec_helper'

feature 'Hit points' do
  scenario 'displays the opponents hit points' do
    sigh_in_and_play
    expect(page).to have_content 'Incredible Yev: 100HP'
  end
end
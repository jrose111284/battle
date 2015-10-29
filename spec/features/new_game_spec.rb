require 'spec_helper'

feature 'New Game' do
  scenario 'It returns to Sign In to Play' do
    sign_in_and_play
    stub_const('Game::DEFAULT_ATTACK', Player::DEFAULT_HP)
    click_button('Attack')
    click_button('New Game')
    expect(page.current_path).to eq ('/')
  end
end
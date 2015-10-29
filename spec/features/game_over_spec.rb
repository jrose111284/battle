require 'spec_helper'

feature 'Game Over' do
  scenario 'It runs game over sequence when player lost' do
    sign_in_and_play
    stub_const('Player::DEFAULT_ATTACK', Player::DEFAULT_HP)
    attack_round
    expect(page).to have_content 'Incredible Yev lost!'
  end
end
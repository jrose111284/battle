require 'spec_helper'

feature 'Switching' do
  scenario 'switchs turns' do
    sigh_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content 'Incredible Yev attacks Almighty Tom!'
  end
end
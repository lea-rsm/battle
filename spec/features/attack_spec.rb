feature 'Attacking' do

  scenario 'Attacking Player 2 and getting confirmation' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Jeff attacked Jim!"
  end

  scenario "Deduct Player 2 's HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button("Ok")
    expect(page).to have_content "Jim's HP = #{(Player::HP) - 10}"
  end
end

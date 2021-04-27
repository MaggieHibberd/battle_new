feature 'Attacking' do
    # As Player 1,
    # So I can win a game of Battle,
    # I want to attack Player 2, and I want to get a confirmation
    scenario 'attack Player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content 'Charlotte successfully attacked Mittens'
    end
  
    # As Player 1,
    # So I can lose a game of Battle,
    # I want Player 2 to attack me, and I want to get a confirmation
    scenario 'be attacked by Player 2' do
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      click_link 'Attack'
      expect(page).to have_content 'Mittens successfully attacked Charlotte'
    end
end
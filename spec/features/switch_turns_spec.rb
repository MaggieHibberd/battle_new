feature 'Switching turns' do 
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Charlotte's turn"
    end
  end 

    scenario 'after player 1 attacks' do 
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Charlotte's turn"
      expect(page).to have_content "Mittens's turn"
    end

    scenario 'player 2 gets a second round to attack' do 
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      expect(page).not_to have_content "Charlotte's turn"
      expect(page).to have_content "Mittens's turn"
    end
end
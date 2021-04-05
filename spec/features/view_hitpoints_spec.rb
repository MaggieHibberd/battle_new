feature 'Hit points' do 
    scenario 'hitting another player' do 
      visit('/')
      fill_in :player_1_name, with: 'Charlotte'
      fill_in :player_2_name, with: 'Mittens' 
      click_button 'PressSend' 
      expect(page).to have_content 'Mittens: 60HP'
    end 
  end
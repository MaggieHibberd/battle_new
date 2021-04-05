feature 'Hit points' do 
    scenario 'hitting another player' do 
      sign_in_and_play
      expect(page).to have_content 'Mittens: 60HP'
    end 
  end
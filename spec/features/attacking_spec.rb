feature 'attacking players' do
    scenario 'charlotte attacks mittens and gets a confirmation' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content "Charlotte successfully attacked Mittens"
    end
    scenario 'reduce Player 2 HP by 10' do 
        sign_in_and_play
        click_link 'Attack'
        click_button 'OK'
        expect(page).not_to have_content 'Mittens: 60HP'
        expect(page).to have_content 'Mittens: 50HP'
    end 

end 

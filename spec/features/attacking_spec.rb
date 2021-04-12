feature 'attacking players' do
    scenario 'charlotte attacks mittens and gets a confirmation' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content "Charlotte successfully attacked Mittens"
    end
end 
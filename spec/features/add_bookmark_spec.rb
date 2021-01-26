feature 'add bookmark' do
  scenario 'add a new bookmark to the bookmark manager' do
    visit('/bookmarks/new')
    # Fill in website
    fill_in('bookmark', with: 'http://www.github.com')
    # Click button
    click_button 'Add bookmark'

    expect(page).to have_content("http://www.github.com")
  end
end

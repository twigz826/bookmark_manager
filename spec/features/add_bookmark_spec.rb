feature 'add bookmark' do
  scenario 'add a new bookmark to the bookmark manager' do
    visit('/bookmarks/new')
    # Fill in website
    fill_in('url', with: 'http://www.github.com')
    fill_in('title', with: 'Github')
    # Click button
    click_button 'Submit'

    expect(page).to have_link('Github', href: "http://www.github.com")
  end
end

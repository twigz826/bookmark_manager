feature 'bookmarks' do
  scenario 'shows saved bookmarks' do
    visit('/')
    click_button "Show Bookmarks"
    expect(page).to have_content("Here are your bookmarks")
  end

  scenario 'show preloaded bookmarks' do

    visit('/')
    click_button "Show Bookmarks"
    expect(page).to have_content("http://www.google.com")
  end
end

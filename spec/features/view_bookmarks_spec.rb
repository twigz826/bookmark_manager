require 'pg'

feature 'bookmarks' do
  scenario 'shows saved bookmarks' do
    visit('/')
    click_button "Show Bookmarks"
    expect(page).to have_content("Here are your bookmarks")
  end

  scenario 'show preloaded bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/')
    click_button "Show Bookmarks"
    expect(page).to have_content("http://www.google.com")
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end

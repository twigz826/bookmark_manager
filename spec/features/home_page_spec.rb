feature 'visits homepage' do
  scenario 'shows bookmark manager' do
    visit ('/')
    expect(page).to have_content("Bookmark Manager")
  end
end

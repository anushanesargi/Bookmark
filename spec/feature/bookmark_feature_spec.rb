feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do

    Bookmarks.create("http://www.makersacademy.com")
    Bookmarks.create("http://www.destroyallsoftware.com")
    Bookmarks.create("http://www.google.com")

    visit ('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  
  end

end

feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do
    visit('/')
    fill_in :add_url, with: "https://github.com"
    click_button 'Add'

    expect(page).to have_content "https://github.com"
  
  end

end

feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do

    Bookmarks.create("http://www.makersacademy.com", "Makers")
    Bookmarks.create("http://www.destroyallsoftware.com", "Fun")
    Bookmarks.create("http://www.google.com", "Google")

    visit ('/bookmarks')

    expect(page).to have_link("Makers", href: "http://www.makersacademy.com")
    expect(page).to have_link("Fun", href: "http://www.destroyallsoftware.com")
    expect(page).to have_link("Google", href: "http://www.google.com")
  
  end

end

feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do
    visit('/')
    fill_in :add_url, with: "https://github.com"
    fill_in :title, with: "Git"
    click_button 'Add'

    expect(page).to have_link("Git", href: "https://github.com")
  
  end

end

feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do
    visit('/')
    fill_in :add_url, with: "https://www.postgresqltutorial.com/postgresql-cheat-sheet/"
    fill_in :title, with: "Test Bookmark"
    click_button 'Add'

    expect(page).to have_link("Test Bookmark", href: "https://www.postgresqltutorial.com/postgresql-cheat-sheet/")
  
  end

end

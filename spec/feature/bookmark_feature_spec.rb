feature "Testing Bookmark Route" do
  scenario "returns List of Bookmarks" do
    visit ('/bookmarks')
    expect(page).to have_content "List of Bookmarks"
  end
end
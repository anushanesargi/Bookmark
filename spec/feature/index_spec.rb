feature "testing index page" do
  scenario "includes Bookmark Manager" do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end

feature "testing index page" do
  scenario "adds a url to bookmark manager" do
    visit('/')
    fill_in :add_url, with: "https://github.com"
    click_button 'Add'
    # expect(page).to have_content "Added"
    # connection = PG.connect(dbname: 'bookmark_manager_test')

    # connection.exec("INSERT INTO bookmarks (url) VALUES (@add_url);")
    # expect(page).to have_content "Bookmark Manager"
  end
end

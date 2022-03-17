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
  end
end

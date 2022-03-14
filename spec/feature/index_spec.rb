feature "testing index page" do
  scenario "return Bookmark Manager" do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end
end
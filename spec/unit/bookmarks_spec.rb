require 'bookmarks'

describe Class do

  describe '#all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
    
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.destroyallsoftware.com', 'Rubbish');")
      connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.google.com', 'Google');")
    
      urls = Bookmarks.all.map { |bookmark|
         bookmark.url
      }

      expect(urls).to include "http://www.makersacademy.com"
      expect(urls).to include "http://www.destroyallsoftware.com"
      expect(urls).to include "http://www.google.com"
    end

  end

  describe '#create' do
    it 'adds url and title to the database' do
      bookmarks = Bookmarks.create("https://github.com", "Test Bookmark").first
      puts "* #{bookmarks}"
      expect(bookmarks['url']).to eq "https://github.com"
      expect(bookmarks['title']).to eq "Test Bookmark"
    end

  end

  
end

require 'pg'

class Bookmarks

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager_test')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

end
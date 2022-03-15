require 'pg'

class Bookmarks

  def self.all
<<<<<<< HEAD
    if ENV['ENVIRONMENT'] == "test"
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

=======
    connection = PG.connect(dbname: 'bookmark_manager_test')
>>>>>>> fa40e1aeee2ff38c8798ed9b8d6777ba0adb5b42
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

end
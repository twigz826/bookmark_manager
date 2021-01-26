# class Bookmarks
#
#   attr_reader :all
#
#   def initialize(all = ["https://www.google.com/", "https://www.bbc.co.uk/"])
#     @all = all
#   end
# end

require 'pg'

class Bookmark
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end

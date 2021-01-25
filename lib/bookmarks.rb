# class Bookmarks
#
#   attr_reader :all
#
#   def initialize(all = ["https://www.google.com/", "https://www.bbc.co.uk/"])
#     @all = all
#   end
# end

class Bookmarks
  def self.all
    [
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"
     ]
  end
end

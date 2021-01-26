require 'sinatra/base'
require_relative "./lib/bookmark.rb"

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end

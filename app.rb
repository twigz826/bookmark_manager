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

  get '/bookmarks/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(bookmark: params['bookmark'])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

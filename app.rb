require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/bookmarks' do
    add_url = params[:add_url]
    title = params[:title]
    Bookmarks.create(add_url, title)
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @list = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0
end

# External view files as opposed to inline templates

require 'sinatra'

get '/index/?' do
  @name = 'Tejas Bubane'
  @email = 'tejasbubane@gmail.com'
  erb :index
end

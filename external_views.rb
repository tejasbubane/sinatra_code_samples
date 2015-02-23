# External view files as opposed to inline templates

require 'sinatra'

get '/index/?' do
  erb :index
end

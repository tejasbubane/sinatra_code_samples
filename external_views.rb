# External view files as opposed to inline templates

require 'sinatra'

before do
  @website_name = 'Sinatra demo app'
end

before('/index/?') do
  @action_name = 'Index'
end

get '/index/?' do
  @name = 'Tejas Bubane'
  @email = 'tejasbubane@gmail.com'
  erb :index
end

after do
  puts 'Some task after request is served.'
end

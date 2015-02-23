# Configure block

require 'sinatra'

configure do
  mime_type :plain, 'text/plain'
end

get '/plain_text' do
  content_type :plain
  "<h1>This is sinatra</h1>"
end

get '/html' do
  "<h1>This is sinatra</h1>"
end

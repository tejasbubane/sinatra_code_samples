# Handle errors gracefully

require 'sinatra'

before do
  content_type :txt
end

configure do
  set :show_exceptions, false
end

not_found do
  "Ooops! The page you are looking for doesn't exist"
end

get '/divide_by_zero' do
  0 / 0
end

error do
  'Y U NO Work?'
end

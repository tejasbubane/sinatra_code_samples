# Public folder static files take precedence over routes

require 'sinatra'

get '/hello.html' do
  'This string will not be displayed if there is hello.html in public directory.'
end

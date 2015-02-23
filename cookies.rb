# Different options for setting cookies

require 'sinatra'

configure do
  enable :sessions
end

get '/set_session' do
  session[:foo] = 'another cookie value'
  "Session value set."
end

get '/fetch_session' do
  "Session value set is #{session[:foo]}."
end

get '/set_cookie' do
  response.set_cookie 'foo', 'bar'
  'Cookie set.'
end


get '/fetch_cookie' do
  "Cookie = #{request.cookies['foo']}"
end

get '/delete_cookie' do
  response.delete_cookie 'foo'
  'Cookie has been deleted.'
end

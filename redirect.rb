# Redirects in sinatra

require 'sinatra'

get '/redirect1' do
  redirect 'http://www.google.co.in'
  # This assumes status_code = 302 (Moved temporarily)
end

get '/redirect2' do
  redirect 'http://www.google.co.in', 301
  # This explicitly tells to put status_code = 301 (Moved permanently)
end

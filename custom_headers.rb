# custom headers in sintra using the `headers` method which accepts a hash
# The key is name of the header and value is the header value

require 'sinatra'

before do
  content_type :txt
end

get '/custom_header' do
  headers "my_header" => "This is my custom header."
  "Normal Response"
end

get '/custom_headers' do
  headers my_header_1: "This is my first header", my_header_2: "This is my second header"
  "Another normal response"
end

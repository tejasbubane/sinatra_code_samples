# Playing with the request object

require 'sinatra'

before do
  content_type :txt
end

get '/request_values' do
  request.env.map { |e| e.to_s + "\n" }
end

get '/request_methods' do
  (request.methods - Object.methods).map { |e| e.to_s + "\n" }
end

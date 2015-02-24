# Use the extension from the file post_get.rb

require 'sinatra'
require_relative 'post_get'

post_get '/' do
  "Hi #{params[:name]}"
end

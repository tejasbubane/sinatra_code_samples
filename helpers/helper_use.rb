# Using the link_helper

require 'sinatra'
require_relative 'link_helper'

get '/' do
  erb :links
end

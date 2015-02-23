# Caching data at browser end with proper headers

require 'sinatra'

get '/' do
  # headers "Cache-Control" => "public, must-revalidate, max-age=3600", "Expires" => Time.at(Time.now.to_i + (60 * 60)).to_s

  expires 3600, :public, :must_revalidate # alternate way
  "This page was generated at #{Time.now}"
end

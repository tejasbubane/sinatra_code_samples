# Attachments

require 'sinatra'

get '/attachment' do
  attachment 'hello.txt'
  'Here is the attachment hello.txt' # This text will be served as an attachment `hello.txt`
end

# This chapter deals with modular applications

require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    'Hello from MyApp!'
  end

  run!
end

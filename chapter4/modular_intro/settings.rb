# Different settings configuration options

require 'sinatra/base'

class MyApp < Sinatra::Base
  set :title, "My Application"

  configure :development, :test do
    enable :admin_access
  end

  if settings.admin_access?
    get '/admin' do
      'Welcome to the admin area!'
    end
  end

  get '/' do
    "<h1>#{settings.title}</h1>"
  end
end

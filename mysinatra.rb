# Sinatra without Sinatra

module MySinatra
  class Application
    def self.call(env)
      new.call(env)
    end

    def call(env)
      headers = { 'Content-Type' => 'text/html' }
      if env['PATH_INFO'] == '/'
        status, body = 200, 'hi index'
      else
        status, body = 404, 'This page was not found!'
      end
      headers['Content-Length'] = body.length.to_s
      [status, headers, [body]]
    end
  end
end

require 'thin'
Thin::Server.start MySinatra::Application, 4567

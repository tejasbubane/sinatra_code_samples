# Helper to create hyperlinks

require 'sinatra/base'

module Sinatra
  module LinkHelper
    def link(name)
      case name
      when :index
        '/index'
      when :about
        '/about'
      else
        "/page/#{name}"
      end
    end
  end

  helpers LinkHelper
end

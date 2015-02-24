# streaming with open_connection in sinatra

require 'sinatra'

before do
  content_type :txt
end

get '/stream' do
  stream do |out|
    out << "This is line 1.\n"
    sleep 1.5
    out << "=== End of line ====\n\n"
    sleep 3
    out << "This is line 2.\n"
    sleep 1.5
    out << "=== End of line ====\n\n"
  end
end

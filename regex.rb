# Example with regular expressions in routes
# Also shows that the first sufficient match is taken even though there exist
# more accurate matches later

require 'sinatra'

get %r{/(sp|gr)eedy} do
  pass if request.path =~ /\/speedy/ # pass on to next matching route
  "This is speedy and greedy"
end

get '/speedy' do
  "This is only speedy"
end

get '/greedy' do
  "This is only greedy"
end

# Only the first URL will be matched

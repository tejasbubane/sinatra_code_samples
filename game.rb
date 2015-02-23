# Rock, Paper Scissors : Try your luck against the machine
# Let the game begin!

require 'sinatra'

before do
  content_type :txt
  @defeat = { rock: :scissors, paper: :rock, scissors: :paper }
  @throw_types = @defeat.keys
end

get '/throw/:type' do
  player_throw = params[:type].to_sym

  unless @throw_types.include?(player_throw)
    halt 403, "You must throw one of the following: #{@throw_types}"
  end

  computer_throw = @throw_types.sample
  if player_throw == computer_throw
    "You tied with the computer, try again!"
  elsif computer_throw == @defeat[player_throw]
    "Congratulations! You (#{player_throw}) defeated the computer (#{computer_throw})"
  else
    "Ouch! Computer (#{computer_throw}) defeated you! (#{player_throw})"
  end
end

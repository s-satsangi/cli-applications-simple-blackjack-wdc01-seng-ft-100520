require_relative "blackjack.rb"
require 'pry'
#binding.pry
welcome
card_total = initial_round
#binding.pry
until (card_total > 21 ) do
  card_total += hit? card_total
  display_card_total card_total
  #binding.pry
end

end_game card_total 
runner
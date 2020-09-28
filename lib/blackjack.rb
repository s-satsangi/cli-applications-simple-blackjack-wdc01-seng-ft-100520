require 'pry'
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(11) + 1
end

def display_card_total card_total
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game card_total
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total=deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def hit? card_total
  # code hit? here
  prompt_user
  user_turn = get_user_input.chomp
  case user_turn
  when 'h' 
    #binding.pry
    card_total += deal_card
   
    #return card_total
  when 's'
    #binding.pry
    card_total
  else 
   # binding.pry
    invalid_command
    hit? card_total
  end
  card_total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
card_total = initial_round
#binding.pry
while (card_total > 21 ) do
  
#  binding.pry
  display_card_total card_total
  user_choice = hit? card_total
  binding.pry
  card_total += user_choice
end

end_game card_total 
end
    

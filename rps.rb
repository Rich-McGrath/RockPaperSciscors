# Rock Paper Siscors Game

CHOICES = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Sisscors' }
puts 'Welcome to Rock Paper Sisscors'

loop do
  # Play picks their fate
  begin
  puts 'Decide your fate! Please choose Rock, Paper or Sisscors'
  puts 'Please select one: R = Rocl, P = Paper, S = Sisscors'
  user_choice = gets.chomp.to_s.uppercase
  end until CHOICES.keys.include?(user_choice)

  # computer makes a picks
  computer_choice = CHOICES.keys.sample

  if user_choice == computer_choice
    puts "It's a time! You both selected #{user_choice}"
  elsif (player_choice == 'p' && computer_choice == 'r') ||
        (player_choice == 'r' && computer_choice == 's') ||
        (player_choice == 's' && computer_choice == 'p')
    puts 'You won!'
  else
    puts 'The Computer won!'
    puts "The Computer selected #{computer_choice}"
  end
end

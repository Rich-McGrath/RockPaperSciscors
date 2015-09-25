# Rock Paper Scisscors Game

CHOICES = { 'R' => 'Rock', 'P' => 'Paper', 'S' => 'Scisscors' }
print 'Welcome to Rock Paper Sisscors!'
puts ''
puts ''

def display_winning_message(winning_choice)
  case winning_choice
  when 'R'
    puts 'Rock crushes Scissors!'
  when 'P'
    puts 'Paper wraps Rock!'
  when 'S'
    puts 'Scissors cuts Papper!'
  end
end

loop do
  # Player picks their fate
  begin
    puts 'Decide your fate! Please choose Rock, Paper or Sisscors'
    puts ''
    puts 'Please select one: R = Rock, P = Paper, S = Sisscors'
    user_choice = gets.chomp.capitalize
  end until CHOICES.keys.include?(user_choice)

  # Computer makes a picks
  computer_choice = CHOICES.keys.sample

  if user_choice == computer_choice
    puts "It's a tie! You both selected: #{user_choice}"
  elsif (user_choice == 'P' && computer_choice == 'R') ||
        (user_choice == 'R' && computer_choice == 'S') ||
        (user_choice == 'S' && computer_choice == 'P')
    display_winning_message(user_choice)
    puts 'You won!'
  else
    display_winning_message(computer_choice)
    puts 'The Computer won!'
  end

  puts 'Would you like to play agin? (y/n)'
  user_continue = gets.chomp.capitalize
  break if user_continue != 'y'
end

puts 'Hasta la vista baby!'

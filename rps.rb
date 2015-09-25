# Rock Paper Siscors Game

CHOICES = { 'r' => 'Rock', 'p' => 'Paper', 's' => 'Sisscors' }
print 'Welcome to Rock Paper Sisscors!'
puts ''
puts ''

loop do
  # Play picks their fate
  begin
    puts 'Decide your fate! Please choose Rock, Paper or Sisscors'
    puts ''
    puts 'Please select one: R = Rock, P = Paper, S = Sisscors'
    user_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(user_choice)

  # computer makes a picks
  computer_choice = CHOICES.keys.sample

  if user_choice == computer_choice
    puts "It's a tim! You both selected: #{user_choice}"
  elsif (user_choice == 'p' && computer_choice == 'r') ||
        (user_choice == 'r' && computer_choice == 's') ||
        (user_choice == 's' && computer_choice == 'p')
    puts 'You won!'
  else
    puts 'The Computer won!'
    puts "The Computer selected: #{computer_choice}"
  end
end

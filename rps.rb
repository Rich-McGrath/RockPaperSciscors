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

choices = ["rock", "paper", "scissors"]

# вибір комп'ютера
comp = choices.sample

# вибір користувача
puts "Choose rock, paper or scissors:"
user = gets.chomp.downcase

# чи введені дані дійсні
unless choices.include?(user)
  puts "Please choose a rock, paper, or scissors"
  exit
end

# Відображення виборів
puts "Your choice: #{user}"
puts "Computer's choice: #{comp}"

# результати
if user == comp
  puts "It's a tie!"
elsif (user == "rock" && comp == "scissors")
  (user == "scissors" && comp == "paper")
  (user == "paper" && comp == "rock")
  puts "You win!"
else
  puts "You lose!"
end

=begin
Objective:
-User plays computer in rock, paper, scissors, spock, lizard.
User makes their selection. CPU is randomly assigned a value and
the program declares winner. After 3 rounds, the game winner is decided.

rules:
Per creator (https://web.archive.org/web/20181217114425/http://www.samkass.com/theories/RPSSL.html),

- Scissors cuts Paper;
- Paper covers Rock;
- Rock crushes Lizard;
- Lizard poisons Spock;
- Spock smashes Scissors;
- Scissors decapitates Lizard;
- Lizard eats Paper;
- Paper disproves Spock;
- Spock vaporizes Rock;
- Rock crushes Scissors.


Data Structure:
- Set user name as a constant variable
- Set a hash of possible user choices as a constant variable
- set a hash of winning combinations as a constant variable


Algorithm Flow:

1) Get user name
2) Prompt Welcome message and explain the rules
3) Start main loop
4) Prompt user choice loop
    - validate selection
    - if invalid, prompt user to make a valid selction
    - break user choice loop upon valid selection
5) Randomly assign cpu selection
6) Display both user and cpu selections
7) Declare round winner
8) Display game score
9) Continue until user or cpu has reached 3 wins
10) Declare ther game winner
11) Ask to play again
12) Prompt "Thank you" message after exiting the game

=end

# CONSTANTS
WELCOME = <<-MSG
Welcome to Rock, Paper, Scissors, Spock, Lizard! This is the same
game as the classic Rock, Paper, Scissors we all grew up playing, with
some new additions; Spock and Lizard. The rules of the game is as follows:

Scissors cuts Paper; Paper covers Rock; Rock crushes Lizard;
Lizard poisons Spock; Spock smashes Scissors; Scissors decapitates Lizard;
Lizard eats Paper; Paper disproves Spock; Spock vaporizes Rock; and finally
Rock crushes Scissors.

We know that's a lot to take in, so if you'reconfused, don't worry. We'll
help you out by declaring the winner after each round.

The game will be best of 3 format.

Press the Enter/Return key when you are ready to start. Good Luck!
MSG

CHOICE_MSG = <<-MSG
Please enter make your selection:
Rock(r), Paper(p), Scisors(sc), Spock(sp) or Lizard(l)
MSG

CHOICE_SELECTION = {
  r: 'Rock',
  p: 'Paper',
  sc: 'Scisors',
  sp: 'Spock',
  l: 'Lizard'
}

WINNER = {
  r: [:sc, :l],
  p: [:r, :sp],
  sc: [:p, :l],
  sp: [:sc, :r],
  l: [:p, :sp]
}

# METHODS
def clear_screen
  system "clear"
end

def prompt(message)
  puts("=> #{message}")
end

def newline()
  puts ''
end

user_name = nil
  loop do
    prompt("Before we get started, please enter your name:")
    user_name = gets.chomp
    break unless user_name.empty?
    prompt("Invalid entry. Try again.")
  end

  prompt("Thanks #{user_name}! Now lets get going.")
  newline

def get_user_name
  user_name = nil
  loop do
    prompt("Before we get started, please enter your name:")
    user_name = gets.chomp
    break unless user_name.empty?
    prompt("Invalid entry. Try again.")
  end

  prompt("Thanks #{user_name}! Now lets get going.")
  newline
  user_name
end



def get_user_choice
  user_choice = nil
  prompt(CHOICE_MSG)

  loop do
    user_choice = gets.chomp.downcase.to_sym
    break if valid_choice?(user_choice)
    prompt("Come on #{user_name}! That's an invalid selection. Try again.")
  end

  user_choice
end

def valid_choice?(user_choice)
  CHOICE_SELECTION.keys.include?(user_choice)
end

def display_selections(user, cpu)
  prompt("You chose:'#{CHOICE_SELECTION[user]}'")
  prompt("CPU chose:'#{CHOICE_SELECTION[cpu]}'")
  newline
end

def get_round_winner(user, cpu)
  if WINNER[user].include?(cpu)
    'user'
  elsif WINNER[cpu].include?(user)
    'cpu'
  else
    'tie'
  end
end

def display_round_winner(winner)
  case winner
  when 'user'
    prompt("You won!")
    newline
  when 'cpu'
    prompt("Sorry, looks like CPU won this round.")
    newline
  else
    prompt("It's a tie! Please try again!")
    newline
  end
end

def display_score(user_score, cpu_score)
  prompt("#{user_name}, your score is: #{user_score}")
  prompt("CPU score is: #{cpu_score}")
  newline
end

def game_winner(user_score, cpu_score)
  if user_score == 3
    prompt("Congradulations #{user_name}! You beat the CPU!")
    newline
  elsif cpu_score == 3
    prompt("Welp.. looks like the CPU beat you. Better luck next time, #{user_name}")
    newline
  end
end

def play_again?
  play_again = nil

  loop do
    puts("Would you like to play again?('y'/'n')")
    play_again = gets.chomp
    break if play_again.downcase.start_with?('y', 'n')
    puts("Come on #{user_name}! That's an invalid answer. Please chose 'Y' or 'N'")
  end

  play_again.downcase.start_with?('y')
end

def game_play(user_score, cpu_score)
  while user_score < 3 && cpu_score < 3
    user_choice = get_user_choice
    cpu_choice = CHOICE_SELECTION.keys.sample

    display_selections(user_choice, cpu_choice)

    winner = get_round_winner(user_choice, cpu_choice)
    display_round_winner(winner)
    
    if winner == 'user'
      user_score += 1
    elsif winner == 'cpu'
      cpu_score += 1
    end

    display_score(user_score, cpu_score)
    break if user_score == 3 || cpu_score == 3

    prompt("Press any enter/return key to start the next round.")
    _ = gets
    clear_screen
  end

  game_winner(user_score, cpu_score)
end

# GAME PLAY LOOP
prompt(WELCOME)
_ = gets
clear_screen

loop do
  user_score = 0
  cpu_score = 0

  game_play(user_score, cpu_score)

  break unless play_again?
  clear_screen
end

prompt("Thank you for playing #{user_name}! See ya next time!")

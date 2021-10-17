require 'yaml'

# CONSTANTS
MESSAGES = YAML.load_file('rpssl_messges.yml')

CHOICE = {
  r: 'Rock',
  p: 'Paper',
  sc: 'Scissors',
  sp: 'Spock',
  l: 'Lizard'
}

WINNING_PICK = {
  r: [:sc, :l],
  p: [:r, :sp],
  sc: [:p, :l],
  sp: [:r, :sc],
  l: [:p, :sp]
}

PLAY_ANOTHER = %w(y yes n no)

WON_ROUND_MSG = ['BOOM!', 'Great Choice!', "You're Awesome!",
                 'You genius!', 'Atta baby, yeah!', 'Man you got lucky!']

LOSS_ROUND_MSG = ['HAHA Loser!', 'Horrible pick..',
                  "Do you know what you're doing?",
                  "Come on! You're better than that", 'SMH..']

WINNING_SCORE = 3

# METHODS
def prompt(message)
  puts(">> #{message}")
end

def newline
  prompt('')
end

def clear_screen
  system "clear"
end

def press_enter_to_continue
    _ = gets
  clear_screen
end

def get_user_name
  user_name = ''

  loop do
    prompt(MESSAGES['name'])
    user_name = gets.strip
    break unless user_name.empty?()
    prompt(MESSAGES['invalid_name'])
  end

  user_name
end

def valid_choice?(choice)
  CHOICE.keys.include?(choice)
end

def get_choice(user_name)
  choice = ''

  loop do
    prompt(MESSAGES['CHOICE_MSG'])
    choice = gets.strip.downcase.to_sym
    break if valid_choice?(choice)
    prompt("Come on #{user_name}. Invalid choice. Please try again.")
    newline
  end

  choice
end

def get_cpu_choice
  CHOICE.keys.sample
end

def print_choices(user_name, user_choice, cpu_choice)
  prompt("#{user_name} chose:")
  sleep(0.2)
  prompt("'#{CHOICE[user_choice]}'")
  newline
  prompt("CPU is choosing:")
  sleep(1.5)
  prompt("'#{CHOICE[cpu_choice]}'")
  newline
end

def get_round_winner(user_choice, cpu_choice)
  if WINNING_PICK[user_choice].include?(cpu_choice)
    'user'
  elsif WINNING_PICK[cpu_choice].include?(user_choice)
    'cpu'
  else
    'tie'
  end
end

def print_round_winner(winner)
  case winner
  when 'user'
    prompt("#{WON_ROUND_MSG.sample} You win this round!")
  when 'cpu'
    prompt("#{LOSS_ROUND_MSG.sample} CPU wins this round lol")
  when 'tie'
    prompt("It's a tie. Let's go again!")
  end
end

def adjust_score(winner, scores)
  case winner
  when 'user'
    scores[:user_score] += 1
  when 'cpu'
    scores[:cpu_score] += 1
  end
end

def print_score(user_name, user, cpu)
  prompt("#{user_name}'s score is: #{user}")
  prompt("CPU score is: #{cpu}")
  newline
end

def someone_won_game?(user_score,cpu_score)
  user_score == WINNING_SCORE || cpu_score == WINNING_SCORE
end

def print_game_winner(user_score, cpu_score)
  if user_score == WINNING_SCORE
    prompt(MESSAGES['game_winner'])
  elsif cpu_score == WINNING_SCORE
    prompt(MESSAGES['game_loser'])
  end
end

def play_again?
  play_again = ''

  loop do
    puts(MESSAGES['go_again'])
    play_again = gets.strip.downcase
    break if PLAY_ANOTHER.include?(play_again)
    puts(MESSAGES['go_again_error'])
  end

  play_again == 'y' || play_again == 'yes'
end

# GAME LOOP
clear_screen
prompt(MESSAGES['WELCOME'])
press_enter_to_continue
user_name = get_user_name

loop do
  scores = { user_score: 0, cpu_score: 0 }

  while someone_won_game?(scores[:user_score], scores[:cpu_score]) == false
    clear_screen

    user_choice = get_choice(user_name)
    cpu_choice = get_cpu_choice

    print_choices(user_name, user_choice, cpu_choice)

    winner = get_round_winner(user_choice, cpu_choice)

    sleep(0.5)
    print_round_winner(winner)
    newline

    adjust_score(winner, scores)

    sleep(0.5)
    print_score(user_name, scores[:user_score], scores[:cpu_score])

    break if someone_won_game?(scores[:user_score],scores[:cpu_score])
    sleep(1)
    prompt(MESSAGES['press_enter'])
    press_enter_to_continue
  end

  print_game_winner(scores[:user_score], scores[:cpu_score])
  newline

  break unless play_again?
end

prompt(MESSAGES['thank_you'] + " #{user_name}!")

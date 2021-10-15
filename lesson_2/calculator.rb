require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE_CHOICE = %w(en es)

WORD_EN = {
  '1': 'Adding',
  '2': 'Subtracting',
  '3': 'Multiplying',
  '4': 'Dividing'
}

WORD_ES = {
  '1': 'Agregando',
  '2': 'Restando',
  '3': 'Multiplicando',
  '4': 'Divisor'
}

def prompt(message)
  puts("=> #{message}")
end

def clear_screen
  system "clear"
end

def newline
  puts ''
end

def get_language
  language = ''

  loop do
    prompt("For English, please enter: 'en'")
    prompt("Para Español, por favor introduzca: 'es'")
    language = gets.chomp.downcase
    break if valid_language?(language)
    prompt("Invalid language selection. Please try again.")
    prompt("Selección de idioma no válida. Inténtelo de nuevo.")
    newline
  end

  language
end

def valid_language?(lang_choice)
  LANGUAGE_CHOICE.include?(lang_choice)
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_i.to_s == input
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def get_name
  name = ''
  prompt(MESSAGES[LANGUAGE]['welcome'])

  loop do
    name = gets.chomp
    if name.empty?()
      puts(MESSAGES[LANGUAGE]['valid_name'])
    else
      break
    end
  end

  name
end

def get_number1
  number1 = ''

  loop do
    prompt(MESSAGES[LANGUAGE]['number1'])
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(MESSAGES[LANGUAGE]['valid_number'])
    end
  end

  number1
end

def get_number2
  number2 = ''

  loop do
    prompt(MESSAGES[LANGUAGE]['number2'])
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(MESSAGES[LANGUAGE]['valid_number'])
    end
  end

  number2
end

def get_operator
  operator = ''
  prompt(MESSAGES[LANGUAGE]['operator_prompt'])

  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES[LANGUAGE]['operator'])
    end
  end

  operator
end

def sub_operation_word(op)
  case LANGUAGE
  when 'en'
    WORD_EN[:"#{op}"]
  when 'es'
    WORD_ES[:"#{op}"]
  end
end

def cal_result(operator, number1, number2)
  case operator
  when '1'
    number1.to_f() + number2.to_f()
  when '2'
    number1.to_f() - number2.to_f()
  when '3'
    number1.to_f() * number2.to_f()
  when '4'
    number1.to_f() / number2.to_f()
  end
end

# BEGIN CALCULATOR
LANGUAGE = get_language
clear_screen
name = get_name
clear_screen

prompt(MESSAGES[LANGUAGE]['greeting'] + ", #{name}!")

# MAIN LOOP
loop do
  number1 = get_number1

  number2 = get_number2

  operator = get_operator
  clear_screen

  prompt("#{sub_operation_word(operator)} " +
        MESSAGES[LANGUAGE]['operation_to_message'])
  sleep(1)

  result = cal_result(operator, number1, number2)

  prompt(MESSAGES[LANGUAGE]['result'] + ":")
  sleep(1)

  prompt("#{result}")
  newline

  prompt(MESSAGES[LANGUAGE]['another_calculation'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  clear_screen
end

clear_screen
prompt(MESSAGES[LANGUAGE]['thank_you'] + ", #{name}!")

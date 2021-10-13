# CONSTANT
VALID_YES_NO = ['yes', 'y', 'no', 'n']

# METHODS
def clear_screen
  system "clear"
end

def new_line
  puts('')
end

def prompt(message)
  puts(">> #{message}")
end

def invalid_number?(num)
  num.empty?() || num.to_i <= 0 # returns true or false
end

def invalid_interest?(num)
  num.empty?() || num.to_f <= 0
end

def get_loan_amount
  loan_amount = nil
  prompt("Please enter your loan amount:")

  loop do
    loan_amount = gets.chomp
    break unless invalid_number?(loan_amount)
    prompt("Hmmm... Something seems off. Please enter a valid loan amount.")
  end
  loan_amount.to_f
end

def get_apr
  apr = nil
  prompt("Please enter your Annual Percentage Rate(APR):")
  prompt("Example: Enter 5 for 5% or 2.5 for 2.5%")

  loop do
    apr = gets.chomp
    break unless invalid_interest?(apr)
    prompt("Hmmm... Something seems off. Please enter a valid APR.")
  end

  apr.to_f
end

def convert_apr(apr)
  (apr / 100) / 12
end

def get_loan_duration
  loan_duration = nil
  prompt("Please enter the loan duration (in years):")

  loop do
    loan_duration = gets.chomp
    break unless invalid_number?(loan_duration)
    prompt("Hmmm... Something seems off.
    Please enter a valid loan duration(in years).")
  end

  loan_duration.to_i * 12
end

def calc_monthly_payment(loan_amount, apr, loan_duration)
  loan_amount * (apr /
  (1 - (1 + apr)**(-loan_duration)))
end

def output_result(loan_amount, apr, loan_duration, monthly_payment)
  prompt("For a loan amount of: $#{format('%.2f', loan_amount)}")
  prompt("With an interest rate of: #{apr}%")
  prompt("And a loan duration of: #{loan_duration} months")
  prompt("Your monthly payment will be:")
  sleep(2)
  prompt("$#{format('%.2f', monthly_payment)}!")
  new_line
end

def get_calc_again?
  calc_again = ''
  prompt("Would you like to calculate another payment? ('y' / 'n')")

  loop do
    calc_again = gets.chomp.downcase
    break if VALID_YES_NO.include?(calc_again)
    prompt("Hmmm... Something seems off. Please enter 'y' or 'n'")
  end

  case calc_again
  when 'y', 'yes'
    true
  when 'n', 'no'
    false
  end
end

# Calculator Main Loop
clear_screen
prompt("Welcome to the Payment Calculator!")

loop do
  loan_amount = get_loan_amount
  clear_screen

  apr = get_apr
  clear_screen

  monthly_interest = convert_apr(apr)

  loan_duration = get_loan_duration
  clear_screen

  monthly_payment =
    calc_monthly_payment(loan_amount, monthly_interest, loan_duration)

  output_result(loan_amount, apr, loan_duration, monthly_payment)

  break unless get_calc_again?
  clear_screen
end

clear_screen
prompt("Thank you for using the Payment Calculator! See ya!")

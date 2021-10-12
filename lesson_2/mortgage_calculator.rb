=begin

ASSIGNMENT:

Collect 3 pieces of iniformation from the user:
1) Loan amount
2) Annual Percentage Rate
3) Loan Duration

calculated and return Monthly payment to the user.

CONSIDERATIONS:

Use Monthly Payment equation provided:
- m = p * (j / (1 - (1 + j)**(-n)))

where:
- m = monthly payment
- p = loan amount
- j = monthly interest rate
- n = loan duration in months

ALGORITHM FLOW:

1) prompt "Welcome" message
2) begin Main Loop
3) set loan amount to = get_loan_amount
4) set monthly interest to = get_apr
5) set loan duration to = get_loan_duration
6) calculate monthly paymnet
7) format and print monthly playment
8) ask user to calculate again
9) prompt "Thank you" message

=end

# METHODS
def prompt(message)
  puts(">> #{message}")
end

def invalid_number?(num)
  num.empty?() || num.to_f <= 0 # returns true or false
end

def get_loan_amount
  loan_amount = nil
  prompt("Please enter your loan amount:")

  loop do
    loan_amount = gets.chomp
    break unless invalid_number?(loan_amount)
    prompt("Hmmm... Something seems off. Please enter a valid loan amount.")
  end
  loan_amount = loan_amount.to_f
end

def get_apr
  monthly_interest = nil
  prompt("Please enter your Annual Percentage Rate(APR):")
  prompt("Example: Enter 5 for 5% or 2.5 for 2.5%")

  loop do
    monthly_interest = gets.chomp
    break unless invalid_number?(monthly_interest)
    prompt("Hmmm... Something seems off. Please enter a valid APR.")
  end

  monthly_interest = (monthly_interest.to_f / 100) / 12
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

  loan_duration = loan_duration.to_f * 12
end

def get_monthly_payment(get_loan_amount, get_apr, get_loan_duration)
  get_loan_amount * (get_apr /
  (1 - (1 + get_apr)**(- get_loan_duration)))
end

def format_payment(monthly_payment)
  prompt("Your Monthly Payment is: $#{format('%.2f', monthly_payment)}.")
end

# Calculator Main Loop
prompt("Welcome to the Payment Calculator!")

loop do
  loan_amount = get_loan_amount
  monthly_interest = get_apr
  loan_duration = get_loan_duration

  monthly_payment =
    get_monthly_payment(loan_amount, monthly_interest, loan_duration)

  format_payment(monthly_payment)

  prompt("Would you like to calculate another payment?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Payment Calculator! See ya!")

def prompt(message)
  puts(">> #{message}")
end

prompt("Welcome to Car Loan Calculator!")

loop do
  prompt("Please enter the loan amount:")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty?() || loan_amount.to_f < 0
      prompt("Please enter a valid loan amount.")
    else
      break
    end
  end

  prompt("Please enter your Annual Percentage Rate (APR):")
  prompt("Example: Enter 5 for 5% or 2.5 for 2.5%")

  interest = ''
  loop do
    interest = gets.chomp

    if interest.empty?() || interest.to_f < 0
      prompt("Please enter a valid Annual Percetnage Rate.")
    else
      break
    end
  end

  prompt("Please enter the duration of the loan (in years)")

  years = ''
  loop do
    years = gets.chomp

    if years.empty?() || years.to_f < 0
      prompt("Please enter a valid loan duration (in years).")
    else
      break
    end
  end

  interest_rate = interest.to_f / 100
  monthly_interest_rate = interest_rate / 12
  months = years.to_f * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(- months)))

  prompt("Your Monthly Payment is: $#{format('%.2f', monthly_payment)}.")

  prompt("Would you like to calculate another monthly payment?
        ('y' to try again)")

  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using Car Loan Calculator! Good bye!")



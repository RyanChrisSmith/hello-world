class PalinSum
  def find_palindromic_numbers
    # array to store the palindromic numbers
    palindromic_numbers = []
    # variable to store the current number we are checking
    num = 0

    # Loop until we have found 25 palindromic numbers
    while palindromic_numbers.size < 25
      # Check if the number plus its inverse equals a palindrome
      if (num + num.to_s.reverse.to_i).to_s == (num + num.to_s.reverse.to_i).to_s.reverse
        # Check if the palindrome is greater than 1000
        if num + num.to_s.reverse.to_i > 1000
          # Add the number to the list of palindromic numbers
          palindromic_numbers << num
        end
      end

      # Move on to the next number
      num += 1
    end

    # Return the list of palindromic numbers
    palindromic_numbers
  end
end

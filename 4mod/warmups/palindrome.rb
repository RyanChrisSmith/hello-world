class Palindrome

  def find_next_palindrome(number)
    next_number = number.next
    next_number += 1 until next_number.to_s == next_number.to_s.reverse
    next_number
  end


  def is_palindrome?(input)
    # Convert the input to a string
    string = input.to_s

    # Check if the string is a palindrome by iterating through
    # the characters and comparing the corresponding characters
    # from the opposite ends
    (0...string.length / 2).each do |i|
      if string[i] != string[string.length - 1 - i]
        return false
      end
    end

    return true
  end
end
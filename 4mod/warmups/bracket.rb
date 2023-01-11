# Create a method/function that will intake a set of brackets [ { ( as a string and determine if the brackets are well-formed (match). Brackets can be nested.

class Bracket
  def balanced?(string)
    return false if string.length.odd? || string.empty?

    # Define a hash that maps open brackets to closing brackets
    pairs = { '{' => '}', '[' => ']', '(' => ')' }
    # Initialize an empty stack to store open brackets
    stack = []

    # Iterate over each character in the string
    # O(n) complexity - Complexity grows in direct proportion to the size of the input data.
    string.chars.each do |char|
      # If the character is an open bracket, add the corresponding closing bracket to the stack
      if pairs.key?(char)
        stack << pairs[char]
      # If the character is a closing bracket
      elsif pairs.value?(char)
        # Return false unless the top of the stack is the matching closing bracket
        return false unless stack.pop == char
      end
    end

    # If the stack is empty at the end, all brackets are well-formed
    stack.empty?
  end
end
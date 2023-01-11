class RomanNumerals
  ROMAN_NUMERALS = [
    [1000, "M"],
    [900, "CM"],
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [90, "XC"],
    [50, "L"],
    [40, "XL"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"],
  ]

  def to_roman(number)
    result = ""
    # Iterate through the list
    ROMAN_NUMERALS.each do |value, letter|
    # Append the Roman letter to the result string and subtract the integer value from the input integer
    # until the input integer is zero
      while number >= value
        result += letter
        number -= value
      end
    end
    result
  end
end
class TargetPayload

  def find_target(payload, target)
    # Initialize an empty set to store the numbers that have been seen so far
    seen = Set.new
    # Iterate through the array of numbers
    payload.each do |num|
      # Check if the target value minus num is in the set
      if seen.include?(target - num)
        # Return an array containing num and the target value minus num
        return [target - num, num]
      end
      # Add num to the set
      seen.add(num)
    end
    # Return an empty array if no pair was found
    []
  end
end
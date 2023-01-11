class Flattener
  # Recursively flattens an array
  def flatten(array, results = [])
    # Iterate over each element in the array
    array.each do |element|
      # If the element is an array, recursively flatten it
      if element.instance_of?(Array)
        flatten(element, results)
      else
        # If the element is not an array, append it to the results
        results << element
      end
    end
    # Return the flattened array
    results
  end
end

class Snail

  def spiral(matrix)
    top = 0
    bottom = matrix.length - 1
    left = 0
    right = matrix[0].length - 1

    result = []

    # Iterate over the elements in the spiral order
    while top <= bottom && left <= right
      # Iterate over the elements in the top row
      (left..right).each do |i|
        result << matrix[top][i]
      end
      top += 1

      # Iterate over the elements in the right column
      (top..bottom).each do |i|
        result << matrix[i][right]
      end
      right -= 1

      # Iterate over the elements in the bottom row (if needed)
      if top <= bottom
        right.downto(left).each do |i|
          result << matrix[bottom][i]
        end
        bottom -= 1
      end

      # Iterate over the elements in the left column (if needed)
      next unless left <= right

      bottom.downto(top).each do |i|
        result << matrix[i][left]
      end
      left += 1
    end
    result
  end
end

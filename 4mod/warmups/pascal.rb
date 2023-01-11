class Pascal
  def calculate_pascals_triangle(depth)
    results = []
    (0..depth - 1).each do |row|
      last = [1]
      term = 1
      k = 1
      (0..row - 1).step(1) { |_index|
        term = term * (row - k + 1) / k
        last.push(term)
        k += 1
      }
      results << last
    end
    results.flatten
  end

end

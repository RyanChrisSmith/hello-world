class Subsets
  def subsets_of_two(arr)
    pairs = []
    arr.each_with_index do |num_1, index|
      (index + 1...arr.length).each do |next_index|
        pairs << [num_1, arr[next_index]]
      end
    end
    pairs
  end

  def all_combos(data)
    return [] if data.empty?

    (0..data.length).flat_map do |index|
      data.combination(index).to_a
    end
  end
end
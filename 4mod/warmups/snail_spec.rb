require './snail'

RSpec.describe Snail do
  it 'can spiral through an matrix to desplay the number sequence' do
    array_matrix = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    charlie = Snail.new

    expect(charlie.spiral(array_matrix)).to eq([1, 2, 3, 6, 9, 8, 7, 4, 5])
  end

  it 'can spiral through an matrix to desplay the number sequence' do
    array_matrix = [
      [9, 8, 7],
      [6, 5, 4],
      [3, 2, 1]
    ]
    charlie = Snail.new

    expect(charlie.spiral(array_matrix)).to eq([9, 8, 7, 4, 1, 2, 3, 6, 5])
  end

  it 'can spiral through an matrix to desplay the number sequence' do
    array_matrix = [
      [16, 15, 14, 13],
      [12, 10, 9, 8],
      [7, 6, 5, 4],
      [3, 2, 1, 0]
    ]
    charlie = Snail.new

    expect(charlie.spiral(array_matrix)).to eq([16, 15, 14, 13, 8, 4, 0, 1, 2, 3, 7, 12, 10, 9, 5, 6])
  end
end
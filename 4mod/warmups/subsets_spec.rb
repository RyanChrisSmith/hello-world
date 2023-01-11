require './subsets'

RSpec.describe Subsets do
  before :each do
    @tally = Subsets.new
  end
  it 'can find all unique subsets of 2 in a given array of numbers' do
    data = [1, 2, 3, 4]

    expect(@tally.subsets_of_two(data)).to eq([[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]])
  end

  it 'can find all unique subsets of 2 in a given array of numbers' do
    data = [54, 57]

    expect(@tally.subsets_of_two(data)).to eq([[54, 57]])
  end

  it 'can find all unique subsets of 2 in a given array of numbers' do
    data = []

    expect(@tally.subsets_of_two(data)).to eq([])
  end

  it 'can find all unique subsets of 2 in a given array of numbers' do
    data = [1, 2, 3, 4, 5, 6, 7]

    expect(@tally.subsets_of_two(data)).to eq([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6], [1, 7], [2, 3], [2, 4], [2, 5], [2, 6], [2, 7], [3, 4], [3, 5], [3, 6], [3, 7], [4, 5], [4, 6], [4, 7], [5, 6], [5, 7], [6, 7]])
  end

  it 'can return all possible combos of numbers' do
    data = [1, 2, 3, 4]

    expect(@tally.all_combos(data)).to eq([[], [1], [2], [3], [4], [1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4], [1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4], [1, 2, 3, 4]])
  end

  it 'can return all possible combos of numbers' do
    data = []

    expect(@tally.all_combos(data)).to eq([])
  end

  it 'can find all unique subsets of 2 in a given array of numbers' do
    data = [54, 57]

    expect(@tally.all_combos(data)).to eq([[], [54], [57], [54, 57]])
  end
end
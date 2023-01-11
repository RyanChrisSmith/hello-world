require './million_numbers'
require 'benchmark'

RSpec.describe MillionNumbers do
  it 'can find the matching numbers in 3 different arrays of equal length' do
    nums_1 = [1, 2, 4, 5, 8]
    nums_2 = [2, 3, 5, 7, 9]
    nums_3 = [1, 2, 5, 8, 9]
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([2, 5])
  end

  it 'can find the matching numbers when not sorted' do
    nums_1 = [2, 5, 4, 1, 8]
    nums_2 = [2, 5, 3, 9, 7]
    nums_3 = [9, 8, 5, 2, 1]
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([2, 5])
  end

  it 'can find the matching when there are duplicate numbers within an array' do
    nums_1 = [2, 5, 5, 1, 1]
    nums_2 = [2, 5, 9, 9, 2]
    nums_3 = [9, 9, 5, 2, 1]
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([2, 5])
  end

  it 'can find the matching negative numbers as well within an array' do
    nums_1 = [-2, 2, 5, 1, 1]
    nums_2 = [2, 5, 9, 9, -2]
    nums_3 = [9, 2, 5, -2, 1]
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([-2, 2, 5])
  end

  it 'returns an empty array when the arrays are empty' do
    nums_1 = []
    nums_2 = []
    nums_3 = []
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([])
  end

  it 'can find the matching numbers no matter the size of the array as well within an array' do
    nums_1 = [-2, 2, 5]
    nums_2 = [2, 5, 9, 9, -2]
    nums_3 = [9, 2, -2, 5, 6, 8, 300, 4]
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to eq([-2, 2, 5])
  end

  it 'can do the same with a random set of a million numbers' do
    nums_1 = (1..10_000_000).to_a.sample(1_000_000)
    nums_2 = (1..10_000_000).to_a.sample(1_000_000)
    nums_3 = (1..10_000_000).to_a.sample(1_000_000)
    milli = MillionNumbers.new

    expect(milli.find_matches(nums_1, nums_2, nums_3)).to be_a(Array)

    puts Benchmark.measure { milli.find_matches(nums_1, nums_2, nums_3) }
  end
end
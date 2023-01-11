require './target_payload'

RSpec.describe TargetPayload do
  it 'will find the first two numbers in an array taht add up to the target value' do
    result = TargetPayload.new

    expect(result.find_target([1, 3, 4, 5, 10], 15)).to eq([5, 10])
    expect(result.find_target([-1, -3, 4, 7, -5, 18, 10, -23, 5], 15)).to eq([-3, 18])
    expect(result.find_target([-3, -34, 2, 6, 40, -4], 1)).to eq([])
  end
end
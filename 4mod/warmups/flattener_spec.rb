require './flattener'

RSpec.describe Flattener do
  it 'can flatten without ruby method' do
    flat = Flattener.new

    expect(flat.flatten([1, 2, 3, [[4], 5], [[[6]]]])).to eq([1, 2, 3, 4, 5, 6])

    expect(flat.flatten(['hi', 'this is', [[['string'], 'that is very'], [[[['nested']]]]]])).to eq(['hi', 'this is', 'string', 'that is very', 'nested'])
  end
end
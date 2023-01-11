require './pascal'

RSpec.describe Pascal do
  it 'will return an array representing the triangle to level passes as an argument' do
    triangle = Pascal.new

    expect(triangle.calculate_pascals_triangle(4)).to eq ([1, 1, 1, 1, 2, 1, 1, 3, 3, 1])

    expect(triangle.calculate_pascals_triangle(3)).to eq ([1, 1, 1, 1, 2, 1])

    expect(triangle.calculate_pascals_triangle(9)).to eq ([1, 1, 1, 1, 2, 1, 1, 3, 3, 1, 1, 4, 6, 4, 1, 1, 5, 10, 10, 5, 1, 1, 6, 15, 20, 15, 6, 1, 1, 7, 21, 35, 35, 21, 7, 1, 1, 8, 28, 56, 70, 56, 28, 8, 1])
  end
end
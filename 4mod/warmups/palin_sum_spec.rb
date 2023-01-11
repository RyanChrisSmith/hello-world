require './palin_sum'

RSpec.describe PalinSum do
  it 'will list the next 25 sets of numbers equaling palindromes over 1000' do
    pally = PalinSum.new
    expect(pally.find_palindromic_numbers).to eq([209, 308, 407, 506, 605, 704, 803, 902, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017])
  end
end
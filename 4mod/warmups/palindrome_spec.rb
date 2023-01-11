require './palindrome'

RSpec.describe Palindrome do
  it 'will find the next palindrome after the number given' do
    pally = Palindrome.new

    expect(pally.find_next_palindrome(100)).to eq 101
    expect(pally.find_next_palindrome(11)).to eq 22
  end

  it '' do
    pally = Palindrome.new

    expect(pally.is_palindrome?('wow')).to eq true
    expect(pally.is_palindrome?(101)).to eq true
    expect(pally.is_palindrome?(10111)).to eq false
    expect(pally.is_palindrome?('tattarrattat')).to eq true
  end
end
require './roman_numerals'

RSpec.describe RomanNumerals do
  it 'can convert numbers to the most efficient roman numeral' do
    efficient = RomanNumerals.new

    expect(efficient.to_roman(128)).to eq("CXXVIII")
    expect(efficient.to_roman(3_428)).to eq("MMMCDXXVIII")
    expect(efficient.to_roman(428)).to eq("CDXXVIII")
  end
end
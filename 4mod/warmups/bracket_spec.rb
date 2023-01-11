require './bracket'
require 'benchmark'

RSpec.describe Bracket do
  it 'can determine matching brackets' do
    bracket = Bracket.new
    expect(bracket.balanced?('{}')).to eq(true)

    expect(bracket.balanced?('{()}')).to eq(true)

    expect(bracket.balanced?('({[]}{[]})')).to eq(true)

    expect(bracket.balanced?('{[(())]}')).to eq(true)

  end

  it 'will determine none matching brackets' do
    bracket = Bracket.new
    expect(bracket.balanced?(')][(')).to eq(false)

    expect(bracket.balanced?('{(')).to eq(false)

    expect(bracket.balanced?('{[)][]}')).to eq(false)

    expect(bracket.balanced?(']')).to eq(false)

    expect(bracket.balanced?('{(}')).to eq(false)

    expect(bracket.balanced?('')).to eq(false)
  end

  it 'random' do
    bracket = Bracket.new

    expect(bracket.balanced?('{[}{]}')).to eq(false)

    expect(bracket.balanced?('{(})')).to eq(false)
  end
end
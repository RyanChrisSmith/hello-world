require './lib/encodes_file_reader'

RSpec.describe EncodesFileReader do 
  it 'exists' do 
    encodes_file_reader = EncodesFileReader.new('./data/encodes.csv')
    expect(encodes_file_reader).to be_a(EncodesFileReader)
  end
end
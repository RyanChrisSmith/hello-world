require './lib/encodes_file_reader'

RSpec.describe EncodesFileReader do
  let(:encodes_file_reader) { EncodesFileReader.new('./data/encodes.csv') }

  it 'exists' do
    expect(encodes_file_reader).to be_a(EncodesFileReader)
  end

  it 'has attributes' do
    expect(encodes_file_reader.instance_variables).to eq([:@encodes])
  end

  it 'should return an array of Encode objects' do
    expect(encodes_file_reader.encodes).to be_an(Array)
    expect(encodes_file_reader.encodes.first).to be_a(Encode)
  end
end
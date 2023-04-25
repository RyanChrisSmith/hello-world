require 'csv'
require 'encode'
class EncodesFileReader
  attr_reader :encodes

  def initialize(file_path)
    rows = CSV.read(file_path, headers: true, header_converters: :symbol)
    @encodes = rows.map { |encode| Encode.new(encode.to_h) }
  end
end
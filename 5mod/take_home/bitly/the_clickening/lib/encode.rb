class Encode
  attr_reader :long_url,
              :domain,
              :hash

  def initialize(encode_data)
    @long_url = encode_data[:long_url]
    @domain = encode_data[:domain]
    @hash = encode_data[:hash]
  end
end
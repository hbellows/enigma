require 'date'
require './lib/encryptor'

class Enigma
  attr_reader :key, :date

  def encrypt(input, key = rand(10000..99999).digits.reverse,
              date = Date.today.strftime('%e%m%y'))
    encryptor = Encryptor.new(key, date)
    @key = key
    @date = date
    split = encryptor.split_message(input)
    slice = encryptor.slice_input(split)
    nested = encryptor.find_indexes(slice)
    encrypted = encryptor.encrypt_message(nested)
  end

  def decrypt(input)
    encryptor = Decryptor.new(key, date)
    split = encryptor.split_message(input)
    slice = encryptor.slice_input(split)
    nested = encryptor.find_indexes(slice)
    encrypted = encryptor.encrypt_message(nested)
    @key = key
    @date = date
  end
end

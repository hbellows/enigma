require 'date'

class Enigma

  def encyrpt(input, key = rand(10000..99999).digits.reverse,
              date = Date.new.strftime('%e%m%y'))
    encryptor = Encrypt.new(key, date) 
    split = encryptor.split_message(input)
    slice = encryptor.slice_input(split)
    nested = encryptor.find_indexes(slice)
    encrypted = encryptor.encrypt_message(nested)
  end

end

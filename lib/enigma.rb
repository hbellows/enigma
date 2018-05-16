require 'date'

class Enigma
  attr_reader :file

  def initialize(key = rand(10000..99999).digits.reverse,
                 date = Date.new.strftime('%e%m%y'))

    @key = key
    @date = date
    @file = File.read(ARGV[0])
  end

  def encrypt 
    encrypt = Encrypt.new(key, date)
    encrypted = encrypt.encrypt(file)
  end


end

# require './lib/key_gen'

class Encryptor
  attr_reader :key_gen, :offset, :key

  def initialize(input)#, key_gen, offset)
    @key_gen = KeyGenerator.new
    @key = key_gen.key
    @offset = Offset.new
    @map = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
            'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', ' ', '.', ',']

    @map_2 = [('a'..'z') + ('A'..'Z') + (0..9) + ('!', '@', '#', '$', '%', '^',
      '&', '*', '()', '[]', ',', '.', '<>', ':', ';', '/', '?', '\\', '|')]


require "pry"; binding.pry

    @input = input
  end


end

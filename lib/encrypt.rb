require './lib/key_gen'

class Encrypt
  attr_reader :key_gen
  def initialize(key, date)
    @key_gen = KeyGenerator.new(key, date)
    @dictionary = [*('a'..'z'), *('A'..'Z'), *(0..9), '!', '@', '#', '$', '%',
                   '^', '&', '*', '()', '[]', ',', '.', '<>', ':', ';', '/',
                   '?', '\\', '|',' '] * 2
  end

  def encyrpt(input)
    split = split_message(input)
    slice = slice_input(split)
    nested = find_indexes(slice)
    encrypted = encrypt_message(nested)
  end

  def split_message(input)
    input.chars
  end

  def slice_input(split)
    split.each_slice(4).map do |slice|
      slice
    end
  end

  def find_indexes(slice)
    slice.map do |nested|
      nested.map.with_index do |char, index|
        if index == 0
          @dictionary.find_index(char) + key_gen.number_shift_a
        elsif index == 1
          @dictionary.find_index(char) + key_gen.number_shift_b
        elsif index == 2
          @dictionary.find_index(char) + key_gen.number_shift_c
        elsif index == 3
          @dictionary.find_index(char) + key_gen.number_shift_d
        end
      end
    end.flatten
  end

  def encrypt_message(nested)
    # require "pry"; binding.pry
    nested.map do |index|
      @dictionary[index]
    end.join
  end
end



 # shift letter by appropriate number of rotations and offsets
 # determine correct starting point for rotations and offsets
 # iterate through entire message and place in local variable
 # Turn message into a string
 # return encrypted message in encrypted format

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
      find_new_index(nested)
    end.flatten
  end

  def find_new_index(nested)
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
  end

  def encrypt_message(nested)
    nested.map do |index|
      @dictionary[index]
    end.join
  end
end

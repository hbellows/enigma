require './lib/key_gen'


class Decryptor
  attr_reader :key_gen
  def initialize(key, date)
    @key_gen = KeyGenerator.new(key, date)
    @dictionary = [*('a'..'z'), *('A'..'Z'), *('0'..'9'), '!', '@', '#',
                    '$', '%', '^', '&', '*', '()', '[]', ',', '.', '<>', ':',
                    ';', '/', '?', '|', '=', '+', ' '] * 2
  end

  def split_message(input)
    input.chars
  end

  def slice_input(split)
    split.each_slice(4).map do |spliced|
      spliced
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
        @dictionary.index(char) - key_gen.number_shift_a
      elsif index == 1
        @dictionary.index(char) - key_gen.number_shift_b
      elsif index == 2
        @dictionary.index(char) - key_gen.number_shift_c
      elsif index == 3
        @dictionary.index(char) - key_gen.number_shift_d
      end
    end
  end

  def decrypt_message(nested)
    nested.map do |index|
      @dictionary[index]
    end.join
  end
end



# '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'

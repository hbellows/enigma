require './lib/key_gen'

class Encrypt

  def initialize
    @key_gen = KeyGenerator.new
    @map_2 = [*('a'..'z'), *('A'..'Z'), *(0..9) + ['!', '@', '#', '$', '%', '^',
      '&', '*', '()', '[]', ',', '.', '<>', ':', ';', '/', '?', '\\', '|']]
  end

  def split_message(input)
    input.chars
  end

end


 # add offset and rotation to get a number
 # shift letter by appropriate number of rotations and offsets
 # determine correct starting point for rotations and offsets
 # iterate through entire message and place in local variable
 # Turn message into a string
 # return encrypted message in encrypted format

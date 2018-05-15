require 'minitest/autorun'
require 'minitest/pride'
require './lib/encrypt'

class EncryptTest < Minitest::Test

  def test_it_can_split_a_message
    encrypt = Encrypt.new
    result = ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
    input = 'hello world'
    assert_equal result, encrypt.split_message(input)
  end

  def test_it_adds_rotation_and_offset
    encrypt = Encrypt.new
    

  end


end

require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'
require 'pry'

class EncryptorTest < Minitest::Test

  def test_it_can_split_a_message
    encrypt = Encryptor.new([1, 2, 3, 4, 5], '140518')
    input = 'hello world'
    result = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']

    assert_equal result, encrypt.split_message(input)
  end

  def test_it_can_slice_a_message
    encrypt = Encryptor.new([1, 2, 3, 4, 5], '140518')
    input = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']
    result = [['h', 'e', 'l', 'l'], ['o', ' ', 'w', 'o'], ['r', 'l', 'd']]

    assert_equal result, encrypt.slice_input(input)
  end

  def test_it_can_find_new_index
    encrypt = Encryptor.new([1, 2, 3, 4, 5], '140518')
    input = ['h', 'e', 'l', 'l']
    result = [27, 30, 47, 60]
    
    assert_equal result, encrypt.find_new_index(input)
  end
  
  def test_it_can_find_indexes_of_sliced_arrays
    encrypt = Encryptor.new([1, 2, 3, 4, 5], '140518')
    input = [['h', 'e', 'l', 'l'], ['o', ' ', 'w', 'o'], ['r', 'l', 'd']]
    result = [27, 30, 47, 60, 34, 107, 58, 63, 37, 37, 39]

    assert_equal result, encrypt.find_indexes(input)
  end

  def test_it_can_return_encrypted_message
    encrypt = Encryptor.new([1, 2, 3, 4, 5], '140518')
    input = [27, 30, 47, 60, 34, 107, 58, 63, 37, 37, 39]
    result = 'BEV8Iz6@LLN'

    assert_equal result, encrypt.encrypt_message(input)
  end
end

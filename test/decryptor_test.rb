require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/decryptor'

class DecryptorTest < Minitest::Test

  def test_it_can_split_a_message
    decrypt = Decryptor.new([1, 2, 3, 4, 5], '140518')
    input = 'BEV8Iz6@LLN'
    result = ['B', 'E', 'V', '8', 'I', 'z', '6', '@', 'L', 'L', 'N']

    assert_equal result, decrypt.split_message(input)
  end

  def test_it_can_slice_a_message
    decrypt = Decryptor.new([1, 2, 3, 4, 5], '140518')
    input = ['B', 'E', 'V', '8', 'I', 'z', '6', '@', 'L', 'L', 'N']
    result = [['B', 'E', 'V', '8'], ['I', 'z', '6', '@'], ['L', 'L', 'N']]

    assert_equal result, decrypt.slice_input(input)
  end

  def test_it_can_find_new_index
    # skip
    decrypt = Decryptor.new([1, 2, 3, 4, 5], '140518')
    input = ['B', 'E', 'V', '8']
    result = [7, 4, 11, 11]

    assert_equal result, decrypt.find_new_index(input)
  end

  def test_it_can_find_indexes_of_sliced_arrays
    decrypt = Decryptor.new([1, 2, 3, 4, 5], '140518')
    input = [['B', 'E', 'V', '8'], ['I', 'z', '6', '@'], ['L', 'L', 'N']]
    result = [7, 4, 11, 11, 14, 82, 22, 14, 17, 11, 3]

    assert_equal result, decrypt.find_indexes(input)
  end

  def test_it_can_decrypt_message
    # skip
    decrypt = Decryptor.new([1, 2, 3, 4, 5], '140518')
    input = [7, 4, 11, 11, 14, 82, 22, 14, 17, 11, 3]
    result = 'hello world'

    assert_equal result, decrypt.decrypt_message(input)
  end
end

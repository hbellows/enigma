require './test/test_helper'
require './lib/encryptor'
require './lib/offset'
require './lib/key_gen'

class EncryptorTest < Minitest::Test


  def test_it_has_a_key
    encryptor = Encryptor.new('hello')

    assert_equal 5, encryptor.key.length
  end

  def test_it_can_have_an_input
    encryptor = Encryptor.new('hello')

    assert_equal 'hello', encryptor.input
  end

  def test_it_can_split_a_message
end

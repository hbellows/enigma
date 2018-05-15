require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_gen'

class KeyGeneratorTest < Minitest::Test

  def test_it_generates_a_key
    key_gen = KeyGenerator.new

    assert_equal 5, key_gen.key.length
  end

  def test_rotation_a_is_valid
    key_gen = KeyGenerator.new

    assert_includes (0..99), key_gen.rotation_a
  end

  def test_rotation_b_is_valid
    key_gen = KeyGenerator.new

    assert_includes (0..99), key_gen.rotation_b
  end

  def test_rotation_c_is_valid
    key_gen = KeyGenerator.new

    assert_includes (0..99), key_gen.rotation_c
  end

  def test_rotation_d_is_valid
    key_gen = KeyGenerator.new

    assert_includes (0..99),key_gen.rotation_d
  end
end

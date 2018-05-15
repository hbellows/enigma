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

  def test_it_creates_number_shifts
    key_gen = KeyGenerator.new

    assert_includes (10..999), key_gen.number_shift_a
    assert_includes (10..999), key_gen.number_shift_b
    assert_includes (10..999), key_gen.number_shift_c
    assert_includes (10..999), key_gen.number_shift_d
  end

  def test_it_has_a_date
  key_gen = KeyGenerator.new


  assert_equal '140518', key_gen.date
  end

  def test_it_can_square_the_date
   key_gen = KeyGenerator.new

  assert_equal (19745308324), key_gen.square_the_date
  end

  def test_it_can_set_the_offset_digits
  key_gen = KeyGenerator.new

  assert_equal ['8', '3', '2', '4'], key_gen.offset_digits
  end

  def test_it_can_create_four_new_offsets
  key_gen = KeyGenerator.new

  assert_equal 8, key_gen.offset_a
  assert_equal 3, key_gen.offset_b
  assert_equal 2, key_gen.offset_c
  assert_equal 4, key_gen.offset_d
  end

end

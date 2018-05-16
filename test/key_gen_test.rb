require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_gen'

class KeyGeneratorTest < Minitest::Test

  def test_it_generates_a_key
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal [1, 2, 3, 4, 5], key_gen.key
  end

  def test_it_can_create_rotations
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal 12, key_gen.rotation_a
    assert_equal 23, key_gen.rotation_b
    assert_equal 34, key_gen.rotation_c
    assert_equal 45,key_gen.rotation_d
  end

  def test_it_has_a_date
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal '140518', key_gen.date
  end

  def test_it_can_square_the_date
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal (19745308324), key_gen.square_the_date
  end

  def test_it_can_set_the_offset_digits
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal ['8', '3', '2', '4'], key_gen.offset_digits
  end

  def test_it_can_create_four_new_offsets
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal 8, key_gen.offset_a
    assert_equal 3, key_gen.offset_b
    assert_equal 2, key_gen.offset_c
    assert_equal 4, key_gen.offset_d
  end

  def test_it_creates_number_shifts
    key_gen = KeyGenerator.new([1, 2, 3, 4, 5], '140518')

    assert_equal 20, key_gen.number_shift_a
    assert_equal 26, key_gen.number_shift_b
    assert_equal 36, key_gen.number_shift_c
    assert_equal 49, key_gen.number_shift_d
  end

end

require 'date'
require './test/test_helper'
# require 'minitest/autorun'
# require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_it_has_a_date
    offset = Offset.new

    assert_equal '140518', offset.date
  end

  def test_it_can_square_the_date
    offset = Offset.new

    assert_equal (19745308324), offset.square_the_date
  end

  def test_it_can_set_the_offset_digits
    offset = Offset.new

    assert_equal ['8', '3', '2', '4'], offset.offset_digits
  end

  def test_it_can_create_four_new_offsets
    offset = Offset.new

    assert_equal 8, offset.offset_a
    assert_equal 3, offset.offset_b
    assert_equal 2, offset.offset_c
    assert_equal 4, offset.offset_d
  end
end

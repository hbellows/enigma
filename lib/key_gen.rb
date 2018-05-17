require 'date'

class KeyGenerator
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
  end

  def rotation_a
    a = @key
    a[0..1].join.to_i
  end

  def rotation_b
    b = @key
    b[1..2].join.to_i
  end

  def rotation_c
    c = @key
    c[2..3].join.to_i
  end

  def rotation_d
    d = @key
    d[3..4].join.to_i
  end

  def square_the_date
    date = @date.to_i
    date ** 2
  end

  def offset_digits
    date = square_the_date.to_s.split('')
    date[-4..-1]
  end

  def offset_a
    offset_digits[0].to_i
  end

  def offset_b
    offset_digits[1].to_i
  end

  def offset_c
    offset_digits[2].to_i
  end

  def offset_d
    offset_digits[3].to_i
  end

  def number_shift_a
    rotation_a + offset_a
  end

  def number_shift_b
    rotation_b + offset_b
  end

  def number_shift_c
    rotation_c + offset_c
  end

  def number_shift_d
    rotation_d + offset_d
  end
end

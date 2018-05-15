class Offset

  attr_reader :date

  def initialize
    @date = Date.new(2018,5,14).strftime('%e%m%y')
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
end

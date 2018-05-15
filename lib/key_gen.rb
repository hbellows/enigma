class KeyGenerator
attr_accessor  :key

  def initialize
    @key = rand(10000..99999).digits.reverse
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
end

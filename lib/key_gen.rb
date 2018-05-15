class KeyGenerator
attr_accessor  :key

  def initialize
    @key = rand(10000..99999).to_s.split('').map(&:to_i)
  end

  def rotation_a
    a = @key
    (a[0] * 10) + a[1]
  end

  def rotation_b
    b = @key
    (b[1] * 10) + b[2]
  end

  def rotation_c
    c = @key
    (c[2] * 10) + c[3]
  end

  def rotation_d
    d = @key
    (d[3] * 10) + d[4]
  end
end

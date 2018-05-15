require 'date'

class Enigma
  
  def initialize(key = rand(10000..99999).digits.reverse,
                 date = Date.new.strftime('%e%m%y'))
                 
    @key = key 
    @date = date             
  end
 

end 

require './lib/enigma'

class Encrypt

   file = ARGV[0]
   my_message = File.read(file).strip
   # require "pry"; binding.pry
   enigma = Enigma.new
   e = enigma.encrypt(my_message)

   output_file = ARGV[1]
   File.write(output_file, e)
   puts "Created 'encrypted.txt' with the key #{enigma.key.join.to_i} and date #{enigma.date}"
end

Encrypt.new

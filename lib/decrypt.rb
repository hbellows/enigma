require './lib/enigma'

class Decrypt

   file = ARGV[0]
   my_message = File.read(file).strip
   # require "pry"; binding.pry
   enigma = Enigma.new
   e = enigma.decrypt(my_message)

   output_file = ARGV[1]
   File.write(output_file, e)
   puts "Created 'encrypted.txt' with the key #{ARGV[2]} and date #{ARGV[3]}"
end

Decrypt.new

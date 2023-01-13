handle = File.open(ARGV[0], "r")

incoming_text = handle.read

handle.close

puts "Created 'braille.txt' containing 256 charcters." 

# output_text = incoming_text.upcase

# writer = File.open(ARGV[1], "w")

# writer.write(output_text)

# writer.close

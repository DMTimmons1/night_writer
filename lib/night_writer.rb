handle = File.open(ARGV[0], "r")
incoming_text = handle.read
handle.close

# puts "Created #{ARGV[1]} containing #{word_count} charcters." 

output_text = incoming_text.upcase

writer = File.open(ARGV[1], "w")
writer.write(output_text)
writer.close

lines = File.readlines(ARGV[1])
text = lines.join
word_count = text.split.length

puts "Created #{ARGV[1]} containing #{word_count} charcters." 
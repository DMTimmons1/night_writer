
class NightWriter

  handle = File.open(ARGV[0], "r")
  incoming_text = handle.read
  handle.close

  output_text = incoming_text.upcase

  writer = File.open(ARGV[1], "w")
  writer.write(output_text)
  writer.close

  lines = File.readlines(ARGV[1])
  line_count = lines.size
  text = lines.join 
  total_characters = text.length 


  puts "Created #{ARGV[1]} containing #{total_characters} charcters." 
end
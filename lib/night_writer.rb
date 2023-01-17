require './lib/read_file'
require './lib/write_to_file'

class NightWriter
  attr_reader :read_file
  def initialize
    @read_file = ReadFile.new.read
    @write_file = WriteToFile.new
  end

  def write_to_file
    @write_file.write_to_file
  end

  def text_total
    lines = File.readlines(ARGV[1])
    line_count = lines.size
    text = lines.join 
    total_characters = text.length
    return total_characters
  end
  
  def return_message
   p "Created #{ARGV[1]} containing #{text_total} charcters."
  end

end

# night_writer = NightWriter.new
# night_writer.write_to_file
# night_writer.return_message
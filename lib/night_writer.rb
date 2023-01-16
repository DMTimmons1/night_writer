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
  
  def return_message
    lines = File.readlines(ARGV[1]) 
    line_count = lines.size
    text = lines.join 
    total_characters = text.length
    puts "Created #{ARGV[1]} containing #{total_characters} charcters." 
  end
end

night_writer = NightWriter.new
night_writer.write_to_file
night_writer.return_message
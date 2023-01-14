require './lib/read_file'

class NightWriter
  attr_reader :read_file
  def initialize
    @read_file = ReadFile.new.read
  end


  # def return_message
  #   lines = File.readlines(ARGV[1])
  #   line_count = lines.size
  #   text = lines.join 
  #   total_characters = text.length 
  #   puts "Created #{ARGV[1]} containing #{total_characters} charcters." 
  # end
  
  # def write_to_file
  #   writer = ARGV[1]
  #   output_text = incoming_text.upcase
  #   writer.write(output_text)
  #   writer.close
  # end

end

# night_writer = NightWriter.new
# night_writer.write_file
# night_writer.confirmation_message
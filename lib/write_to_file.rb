class WriteToFile
  attr_reader :manipulated_data
  
  def create_new_file
    File.new(ARGV[1], "w")
  end

  def manipulate_file_data
    file = File.open(ARGV[0])
    file_data = file.read
    @manipulated_data = file_data
    file.close
    return @manipulated_data
  end

  def add_new_file_data
    writer = File.open(ARGV[1], "w")
    writer.write(@manipulated_data)
    writer.close
  end

  def write_to_file
    writer = WriteToFile.new
    writer.create_new_file
    writer.manipulate_file_data
    writer.add_new_file_data
  end

end
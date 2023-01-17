require './lib/translator'

class WriteToFile

  def initialize
    @translator = Translator.new
  end

  def create_new_file
    File.new(ARGV[1], "w")
  end

  def add_new_file_data
    writer = File.open(ARGV[1], "w")
    @translator.translate
    @translator.format_braille
    writer.write(@translator.formatted_braille)
    writer.close
  end

  def write_to_file
    writer = WriteToFile.new
    writer.create_new_file
    writer.add_new_file_data
  end

end
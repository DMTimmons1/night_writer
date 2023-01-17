require './lib/read_file'
require './lib/eng_to_braille'

class Translator
  attr_reader :formatted_braille,
              :english_to_braille,
              :read_file

  def initialize
    @english_to_braille = EngToBraille.new.braille_translation
    @read_file = ReadFile.new.read
    @formatted_braille = ""
  end

  def translate
    @braille_array = []
    @english_array = []
    @read_file.each_char do |char|
      @english_array << char.downcase
    end
    @english_array.each do |letter|
      @english_to_braille.each do | charcter, braille |
        if letter == charcter
          @braille_array << braille
        end
      end
    end
    return @braille_array
  end

  def format_braille
    collumn_1 = []
    collumn_2 = []
    collumn_3 = []
    @braille_array.each do |array|
      collumn_1 << array[0]
      collumn_2 << array[1]
      collumn_3 << array[2]
    end
    @braille_1 = "#{collumn_1.slice(0, 80).join}\n#{collumn_2.slice(0, 80).join}\n#{collumn_3.slice(0, 80).join}\n"
    @braille_2 = "#{collumn_1.drop(80).join}\n#{collumn_2.drop(80).join}\n#{collumn_3.drop(80).join}\n"
    @formatted_braille = @braille_1 + @braille_2
  end
end
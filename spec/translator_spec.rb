require 'spec_helper.rb'

describe Translator do
  let(:night_writer) { NightWriter.new }
  let(:translator) { Translator.new }
  ARGV[0] = './fixture_data/fixture_before_translation.txt'
  ARGV[1] = './fixture_data/fixture_after_translation.txt'
  let(:file_contents) { night_writer.read_file }
  
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_an_instance_of(Translator)
      expect(translator.english_to_braille).to be_a(Hash)
      expect(translator.read_file).to be_a(String)
      expect(translator.formatted_braille).to eq("")
    end
  end

  describe "#translate" do
    it "translates a character to braille" do
      expect(file_contents).to eq("Hello world")
      expect(translator.translate).to eq([["0.", "00", ".."],
                                          ["0.", ".0", ".."],
                                          ["0.", "0.", "0."],
                                          ["0.", "0.", "0."],
                                          ["0.", ".0", "0."],
                                          ["..", "..", ".."],
                                          [".0", "00", ".0"],
                                          ["0.", ".0", "0."],
                                          ["0.", "00", "0."],
                                          ["0.", "0.", "0."],
                                          ["00", ".0", ".."]])
    end
  end

  describe "#format_braille" do
    it "formats the character" do
      translator.translate
      translator.format_braille
      expect(translator.format_braille).to eq("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...\n\n\n\n")
    end
  end
end

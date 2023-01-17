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
end
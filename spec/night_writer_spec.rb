require 'spec_helper.rb'

RSpec.describe NightWriter do
  let(:night_writer) { NightWriter.new }
  describe "#Initialize" do
    it "exists" do
      expect(night_writer).to be_an_instance_of(NightWriter)
    end

    it "reads the text of the file in the first index position" do
      expect(night_writer.read_file).to eq(File.read(ARGV[0]))
    end
  end
end
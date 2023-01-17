require 'spec_helper.rb'


describe NightWriter do
  let(:night_writer) { NightWriter.new }
  ARGV[0] = './fixture_data/fixture_message.txt'
  ARGV[1] = './fixture_data/fixture_write_to_file.txt'
  describe "#initialize" do
    it "exists" do
      expect(night_writer).to be_an_instance_of(NightWriter)
    end
  end

  describe "#write_to_file" do
    it "can write to the new file" do
      night_writer.write_to_file
      allow(night_writer).to receive(:new_file).and_return('fixture_write_to_file.txt')
    end
  end

  describe '#text_total' do
    it 'can read the total characters and return the correct total' do
      allow(night_writer).to receive(:new_file).and_return('fixture_write_to_file.txt')
      expect(night_writer.text_total).to eq(204)
    end
  end

  describe "#return_message" do
    it "can read the arguments and return an accurate message" do
      allow(night_writer).to receive(:new_file).and_return('fixture_write_to_file.txt')
      expect(night_writer.return_message).to eq("Created ./fixture_data/fixture_write_to_file.txt containing 204 charcters.")
    end
  end
end
require 'spec_helper.rb'

# this test also requires an argument due to ARGV.

describe NightWriter do
  let(:night_writer) { NightWriter.new }
  let(:mocked_write_file) { double('WriteToFile') }

  before do
    allow(WriteToFile).to receive(:new).and_return(mocked_write_file)
    allow(mocked_write_file).to receive(:write_to_file)
    allow(File).to receive(:readlines).and_return(['test', 'file'])
  end

  it "exists" do
    expect(night_writer).to be_an_instance_of(NightWriter)
  end

  describe '#write_to_file' do
    it 'calls write_to_file on the WriteToFile instance' do
      night_writer.write_to_file
      expect(mocked_write_file).to have_received(:write_to_file)
    end
  end
end
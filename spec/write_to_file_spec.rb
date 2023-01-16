require 'spec_helper.rb'


# for these tests to work with the console ARGVs, I would need to change the ARGV index positions in my method to
# account for the additional index position added using RSpec. I may make a mock WriteToFile class to accurately
# reflect this. For now, the first index is reading as THIS FILE and returning the manipulated output in the
# new file created.

# when running theses tests, you only need one argument after running the spec, which will be the new 
# newly created, manipulated file.


RSpec.describe WriteToFile do
  let(:writer) { WriteToFile.new }
  let(:file_data) { "test data" }

  before(:each) do
    allow(File).to receive(:new).with(ARGV[1], "w").and_return(double("file", :write => nil))
    allow(File).to receive(:open).with(ARGV[0]).and_return(double("file", :read => file_data, :close => nil))
  end

  describe '#create_new_file' do
    it 'creates a new file with the given file name' do
      expect(File).to receive(:new).with(ARGV[1], "w")
      writer.create_new_file
    end
  end
end
require 'spec_helper.rb'

RSpec.describe EngToBraille do
  describe "#initialize" do
    it "exists" do
      eng_to_braille = EngToBraille.new

      expect(eng_to_braille).to be_an_instance_of(EngToBraille)
      expect(eng_to_braille.braille_translation).to be_a(Hash)
    end
  end
end
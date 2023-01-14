require 'spec_helper.rb'

RSpec.describe EngToBraille do
  let(:eng_to_braille) { EngToBraille.new }
  describe "#initialize" do
    it "exists" do
      expect(eng_to_braille).to be_an_instance_of(EngToBraille)
      expect(eng_to_braille.braille_translation).to be_a(Hash)
    end

    it "can translate english characters to and array of braille characters" do
      expect(eng_to_braille.braille_translation["a"]).to eq(["0.", "..", ".."])
      expect(eng_to_braille.braille_translation["b"]).to eq(["0.", "0.", ".."])
      expect(eng_to_braille.braille_translation["c"]).to eq(["00", "..", ".."])
      expect(eng_to_braille.braille_translation["d"]).to eq(["00", ".0", ".."])
      expect(eng_to_braille.braille_translation["e"]).to eq(["0.", ".0", ".."])
      expect(eng_to_braille.braille_translation["f"]).to eq(["00", "0.", ".."])
      expect(eng_to_braille.braille_translation["g"]).to eq(["00", "00", ".."])
      expect(eng_to_braille.braille_translation["h"]).to eq(["0.", "00", ".."])
      expect(eng_to_braille.braille_translation["i"]).to eq([".0", "0.", ".."])
      expect(eng_to_braille.braille_translation["j"]).to eq([".0", "00", ".."])
      expect(eng_to_braille.braille_translation["k"]).to eq(["0.", "..", "0."])
      expect(eng_to_braille.braille_translation["l"]).to eq(["0.", "0.", "0."])
      expect(eng_to_braille.braille_translation["m"]).to eq(["00", "..", "0."])
      expect(eng_to_braille.braille_translation["n"]).to eq(["00", ".0", "0."])
      expect(eng_to_braille.braille_translation["o"]).to eq(["0.", ".0", "0."])
      expect(eng_to_braille.braille_translation["p"]).to eq(["00", "0.", "0."])
      expect(eng_to_braille.braille_translation["q"]).to eq(["00", "00", "0."])
      expect(eng_to_braille.braille_translation["r"]).to eq(["0.", "00", "0."])
      expect(eng_to_braille.braille_translation["s"]).to eq([".0", "0.", "0."])
      expect(eng_to_braille.braille_translation["t"]).to eq([".0", "00", "0."])
      expect(eng_to_braille.braille_translation["u"]).to eq(["0.", "..", "00"])
      expect(eng_to_braille.braille_translation["v"]).to eq(["0.", "0.", "00"])
      expect(eng_to_braille.braille_translation["w"]).to eq([".0", "00", ".0"])
      expect(eng_to_braille.braille_translation["x"]).to eq(["00", "..", "00"])
      expect(eng_to_braille.braille_translation["y"]).to eq(["00", ".0", "00"])
      expect(eng_to_braille.braille_translation["z"]).to eq(["0.", ".0", "00"])
    end
  end
end
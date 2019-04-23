require "./caesar_cipher"

RSpec.describe "#caesar_cipher" do
    it "Works with a single letter" do
        expect(caesar_cipher("a", 1)).to eql("b")
    end

    it "Keep the same case" do
        expect(caesar_cipher("AA", 3)).to eql("DD")
    end

    it "Works with words" do
        expect(caesar_cipher("Bbb", 2)).to eql("Ddd")
    end

    it "Works with a phrase" do
        expect(caesar_cipher("Hello world!", 5)).to eql("Mjqqt btwqi!")
    end

    it "Wraps" do 
        expect(caesar_cipher("Z", 1)).to eql("A")
    end

    it "Works with negative shift" do
        expect(caesar_cipher("Hi", -5))
    end

    it "Ignores other characters" do
        expect(caesar_cipher(",", 5)).to eql(",")
    end

    it "Works with large shift factors" do
        expect(caesar_cipher("TDD is great!", 30)).to eql("XHH mw kviex!")
    end

    it "Works with negative lasrge shift factors" do
        expect(caesar_cipher("I love ruby :)", -50)).to eql("K nqxg twda :)")
    end
end
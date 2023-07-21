require './lib/cipher'

describe "#caesar_cipher" do
  it "returns correct value" do
    expect(caesar_cipher('what a string', 5)).to eql('bmfy f xywnsl')
  end
end

describe "#caesar_cipher" do
  it "can handle punctuation" do
    expect(caesar_cipher('what a string!', 5)).to eql('bmfy f xywnsl!')
  end
end

describe "#ceasar cipher" do
  it "can deal with capital letter" do
    expect(caesar_cipher('What A String', 5)).to eql('Bmfy F Xywnsl')
  end
end

describe "#ceasar cipher" do
  it "wraps properly" do 
    expect(caesar_cipher('Lick my balls', 26)).to eql('Lick my balls')
  end
end
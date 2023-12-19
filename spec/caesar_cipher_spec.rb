require "./caesar_cipher"

describe "#caesar_cipher" do
  it "encrypt basic string" do
    expect(caesar_cipher("abc")).to eql("def")
  end

  it "accept custom shift factor" do
    expect(caesar_cipher("abc", 1)).to eql("bcd")
  end

  it "retain the same case" do
    expect(caesar_cipher("AaBbCc")).to eql("DdEeFf")
  end

  it "works with symbol" do
    expect(caesar_cipher("a!@b$%c^&")).to eql("d!@e$%f^&")
  end

  it "works with number" do
    expect(caesar_cipher("a1b3c5")).to eql("d1e3f5")
  end

  it "warps from z to a" do
    expect(caesar_cipher("xyz")).to eql("abc")
  end
end

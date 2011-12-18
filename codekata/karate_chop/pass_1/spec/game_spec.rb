require './game'

describe "#chop" do
  let(:game) { Game.new }

  it "returns -1 when an empty array is passed" do
    game.chop(3, []).should == -1
  end

  it "returns -1 when an element does not exist" do
    game.chop(-1, [1]).should == -1
  end

  it "returns first element when a match is in the first element" do
    game.chop(1, [1]).should == 0
  end

  it "returns first element when a match is in the first element of a 3 value array" do
    game.chop(1, [1, 3, 5]).should == 0
  end

  it "returns the second element when a match is in the first element of a 3 valle array" do
    game.chop(3, [1, 3, 5]).should == 1
  end

  it "returns the third element when a match is in the third element of a 3 value array" do
    game.chop(5, [1, 3, 5]).should == 2
  end

  it "returns -1 when searching for the number 0 in an odd numbered 3 element array" do
    game.chop(0, [1, 3, 5]).should == -1
  end

  it "returns -1 when searching for the number 2 in an odd numbered 3 element array" do
    game.chop(2, [1, 3, 5]).should == -1
  end

  it "returns -1 when searching for the number 4 in an odd numbered 3 element array" do
    game.chop(4, [1, 3, 5]).should == -1
  end

  it "returns -1 when searching for the number 6 in an odd numbered 3 element array" do
    game.chop(8, [1, 3, 5]).should == -1
  end

  it "returns first element when a match is in the first element of a 4 value array" do
    game.chop(1, [1, 3, 5, 7]).should == 0
  end

  it "returns the second element when a match is in the first element of a 4 valle array" do
    game.chop(3, [1, 3, 5, 7]).should == 1
  end

  it "returns the third element when a match is in the third element of a 4 value array" do
    game.chop(5, [1, 3, 5, 7]).should == 2
  end

  it "returns the fourth element when a match is in the third element of a 4 value array" do
    game.chop(7, [1, 3, 5, 7]).should == 3
  end

  it "returns -1 when searching for the number 0 in an odd numbered 4 element array" do
    game.chop(0, [1, 3, 5, 7]).should == -1
  end

  it "returns -1 when searching for the number 2 in an odd numbered 4 element array" do
    game.chop(2, [1, 3, 5, 7]).should == -1
  end

  it "returns -1 when searching for the number 4 in an odd numbered 4 element array" do
    game.chop(4, [1, 3, 5, 7]).should == -1
  end

  it "returns -1 when searching for the number 6 in an odd numbered 4 element array" do
    game.chop(6, [1, 3, 5, 7]).should == -1
  end

  it "returns -1 when searching for the number 8 in an odd numbered 4 element array" do
    game.chop(8, [1, 3, 5, 7]).should == -1
  end
end

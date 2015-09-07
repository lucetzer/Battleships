require 'board'

describe Board do

  it "a board will accept a ship" do
    expect(subject.place(:ship)).to eq(subject.ships)
  end










end

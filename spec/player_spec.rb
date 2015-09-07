require 'player'

describe Player do

  let(:ship) {double :ship}

  it "can place a ship on the board" do
    expect(subject.place(:ship)).to eq(subject.board.ships)
  end

  it "player is hit" do
    subject.place(ship)
    expect(subject.receive_hit
  end





end

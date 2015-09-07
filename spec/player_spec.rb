require 'player'

describe Player do

  let(:ship) {double :ship, position: "A1"}

  it "can place a ship on the board" do
    expect(subject.place(:ship)).to eq(subject.board.ships)
  end

  it "can tell us when a ship is hit" do
    subject.place(ship)
    expect(subject.receive_hit("A1")).to eq("You've hit a ship!")
  end

  it "can report hit positions" do
    subject.place(ship)
    subject.receive_hit("A1")
    expect(subject.hits).to eq(["A1"])
  end

  it "can report missed positions" do
    subject.place(ship)
    subject.receive_hit("B2")
    expect(subject.hits).to eq([])
  end

  it "the game ends when all ships have been hit" do
    subject.place(ship)
    subject.receive_hit("A1")
    expect(subject).to be_game_over
  end

  # can lose


end

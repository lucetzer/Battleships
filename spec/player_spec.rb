require 'player'

describe Player do

  let(:ship) {double :ship, position: "A1"}

  it "can place a ship on the board" do
    expect(subject.place(:ship)).to eq(subject.board.ships)
  end

  it "player is hit" do
    subject.place(ship)
    expect(subject.receive_hit("A1")).to eq(1)
  end

  it "the game ends when all ships have been hit" do
    subject.place(ship)
    subject.receive_hit("A1")
    expect(subject).to be_game_over
  end



end

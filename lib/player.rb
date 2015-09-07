require_relative 'ship'
require_relative 'board'

class Player

  attr_reader :board, :hits

  def initialize
    @board = Board.new
    @hits = 0
    @misses = []
  end

  def place(ship)
    @board.ships << ship
  end

  def receive_hit(position)
    @hits += 1 if board.ships.find {|ship| ship.position == position}
  end


end

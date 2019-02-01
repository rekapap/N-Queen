require_relative './board.rb'
# Game controlls the game
class Game
  def initialize(board_size)
    @board = Board.new(board_size)
  end
end

require_relative './board.rb'
# Game controlls the game
class Game
  attr_reader :board, :number_of_queens
  def initialize(board_size)
    @board = Board.new(board_size)
    @number_of_queens = board_size
  end
end

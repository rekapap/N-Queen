# frozen_string_literal: true

require_relative './game'

# Main Program
class Main
  BOARD_SIZE_QUESTION = 'What board size do you want?'.freeze
  WRONG_BOARD_SIZE = 'Select an integer above 4!'.freeze

  attr_reader :game

  def setup
    puts(BOARD_SIZE_QUESTION)
    board_size = gets.chomp.to_i
    raise WRONG_BOARD_SIZE if board_size < 4

    @game = Game.new(board_size)
  end
end

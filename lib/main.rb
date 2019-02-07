# frozen_string_literal: true

# Main Program
class Main
  BOARD_SIZE_QUESTION = 'What board size do you want?'.freeze

  def setup
    puts(BOARD_SIZE_QUESTION)
    gets.chomp.to_i
  end
end

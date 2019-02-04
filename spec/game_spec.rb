require 'game'
require 'board'

describe Game do
  subject(:game) { described_class.new(board_size) }
  let(:board_size) { 4 }
  context 'setup' do
    it 'creates a board' do
      expect(Board).to receive(:new).with(board_size)
      described_class.new(board_size)
    end
  end
  describe '#board' do
    it 'returns the board' do
      expect(subject.board).to be_a(Board)
    end
  end
  describe '#number_of_queens' do
    it 'returns the queens\' number' do
      expect(game.number_of_queens).to eq(board_size)
    end
  end
end

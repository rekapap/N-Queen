require 'board'

describe Board do
  subject(:board) { described_class.new(size) }
  subject(:board_2) { described_class.new(size_2) }
  let(:size) { 4 }
  let(:size_2) { 8 }

  describe '#size' do
    it 'has a size' do
      expect(board.size).to eq(size)
    end

    it 'can have different sizes' do
      expect(board_2.size).to eq(size_2)
    end
  end
end
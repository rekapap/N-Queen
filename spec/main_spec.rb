require 'main'
require 'game'

describe Main do
  subject { described_class.new }
  let(:question_str) { Main::BOARD_SIZE_QUESTION }
  let(:eight) { '8' }
  let(:game) { double :game }

  context 'setup' do
    before do
      io_object = double
      expect(subject).to receive(:gets).and_return(io_object)
      expect(io_object).to receive(:chomp).and_return(eight)
    end

    it 'aks for the board size' do
      expect($stdout).to receive(:puts).with(question_str)
      subject.setup
    end

    it 'gets the answer and convert it to an integer' do
      allow($stdout).to receive(:puts).with(question_str)
      expect(eight).to receive(:to_i)
      subject.setup
    end

    it 'creates a new game with the board size' do
      allow($stdout).to receive(:puts).with(question_str)
      allow(Game).to receive(:new).with(eight.to_i).and_return(game)
      subject.setup
      expect(subject.game).to eq(game)
    end
  end
end

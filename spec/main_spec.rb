require 'main'

describe Main do
  subject { described_class.new }
  let(:question_str) { Main::BOARD_SIZE_QUESTION }
  let(:eight) { '8' }
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
  end
end

require 'main'

describe Main do
  subject { described_class.new }
  let(:question_str) { Main::BOARD_SIZE_QUESTION }
  context 'setup' do
    it 'aks for the board size' do
      expect($stdout).to receive(:puts).with(question_str)
      subject.setup
    end
  end
end

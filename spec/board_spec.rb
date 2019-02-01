require 'board'

describe Board do
  subject(:board) { described_class.new(size) }
  let(:size) { 4 }

  it 'has a size' do
    expect(subject.size).to eq(size)
  end
end

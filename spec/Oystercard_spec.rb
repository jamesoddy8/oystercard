require 'Oystercard.rb'

describe Oystercard do
  it 'Oystercard has default balance of zero' do
    expect(subject.balance).to eq(0)
  end
end

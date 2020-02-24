require 'Oystercard.rb'

describe Oystercard do
  let(:oystercard) { Oystercard.new }
  it 'Oystercard has default balance of zero' do
    expect(subject.balance).to eq(0)
  end

it 'top_up method which adds money to my Oysercard balance' do
  expect(subject.top_up(5)).to eq(5)
end

it 'top_up method rasies error if it will bring balance above £90' do 
  oystercard.top_up(Oystercard::DEFAULT_LIMIT)
  expect { oystercard.top_up(1) }.to raise_error "Balance cannot exceed #{Oystercard::DEFAULT_LIMIT}"
end


end


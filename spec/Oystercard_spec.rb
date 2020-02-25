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
    oystercard.top_up(Oystercard::MAXIMUM_BALANCE)
    expect { oystercard.top_up(1) }.to raise_error "Balance cannot exceed #{Oystercard::MAXIMUM_BALANCE}"
  end

  it 'deduct method raises error if balanace drops below £0.' do 
    oystercard.deduct(Oystercard::MINIMUM_BALANCE)
      expect { oystercard.deduct(1) }.to raise_error "Balance can't be less than #{Oystercard::MINIMUM_BALANCE}"
  end

  it 'deducts money from balance' do
    oystercard.top_up(10)
    expect(oystercard.deduct(5)).to eq(5)
  end

  it 'initially not in journey' do
    expect(subject).not_to be_in_journey
  end

  it 'can touch in' do
    subject.touch_in
    expect(subject).to be_in_journey
  end

  it 'can touch out' do
    subject.touch_in
    subject.touch_out
    expect(subject).not_to be_in_journey
  end

  
end

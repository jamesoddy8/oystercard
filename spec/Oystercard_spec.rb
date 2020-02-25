require 'Oystercard.rb'

describe Oystercard do
  let(:oystercard) { Oystercard.new }
  it 'Oystercard has default balance of zero' do
    expect(subject.balance).to eq(0)
  end

  # it 'top_up method which adds money to my Oysercard balance' do
  #   expect(subject.top_up(5)).to eq(5)
  # end
  describe "#top_up" do
      it { is_expected.to respond_to(:top_up).with(1).argument }
    end

  it 'top_up method rasies error if it will bring balance above £90' do
    subject.top_up(Oystercard::MAXIMUM_BALANCE)
    expect { subject.top_up(1) }.to raise_error "Balance cannot exceed #{Oystercard::MAXIMUM_BALANCE}"
  end

<<<<<<< HEAD
  it 'deduct method raises error if balanace drops below £0.' do
    oystercard.deduct(Oystercard::MINIMUM_BALANCE)
      expect { oystercard.deduct(1) }.to raise_error "Balance can't be less than #{Oystercard::MINIMUM_BALANCE}"
  end

  # it 'deducts money from balance' do
  #   oystercard.top_up(10)
  #   expect(oystercard.deduct(5)).to eq(5)
  # end
  describe "#deduct" do
      it { is_expected.to respond_to(:deduct).with(1).argument }
    end

=======
  # it 'deducts money from balance' do
  #   subject.top_up(10)
  #   expect(subject.deduct(5)).to eq(5)
  # end
>>>>>>> 53c16ebe8840339f482644921ade27f0a0e135f8

  it 'initially not in journey' do
    expect(subject).not_to be_in_journey
  end

  it 'can touch in' do
    subject.top_up(Oystercard::MINIMUM_BALANCE)
    subject.touch_in
    expect(subject).to be_in_journey
  end

  it 'will not touch in if below minimum balance' do
    expect{ subject.touch_in }.to raise_error "Insufficient balance to touch in"
  end

  it 'can touch out' do
    subject.top_up(Oystercard::MAXIMUM_BALANCE)
    subject.touch_in
    subject.touch_out
    expect(subject).not_to be_in_journey
  end

<<<<<<< HEAD
=======
  it 'will not touch in if below minimum balance.' do
    expect{ subject.touch_in }.to raise_error "Insufficient balance to touch in" 
  end

  it 'expects to make a charge when you touch out' do
    expect { subject.touch_out }.to change{ subject.balance }.by(-Oystercard::MINIMUM_CHARGE)
  end
 
>>>>>>> 53c16ebe8840339f482644921ade27f0a0e135f8

end

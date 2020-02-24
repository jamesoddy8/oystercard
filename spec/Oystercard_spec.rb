require 'Oystercard.rb'

describe Oystercard do
  it 'Oystercard has default balance of zero' do
    expect(subject.balance).to eq(0)
  end

it 'top_up method which adds money to my Oysercard balance' do
  expect(subject.top_up(5)).to eq(5)
end

end



class Oystercard
  attr_reader :balance, :in_use
MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 0
  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(amount)
    fail "Balance cannot exceed #{MAXIMUM_BALANCE}" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    fail "Balance can't be less than #{MINIMUM_BALANCE}" if @balance - amount < MINIMUM_BALANCE
    @balance -= amount
  end

  def in_journey?
    @in_use
  end

  def touch_in
    # fail "Currently in journey" if @in_journey?
    fail "Insufficient balance to touch in" if balance <= 1
    @in_use = true
  end

  def touch_out
    # fail "Not in journey" unless @in_journey?
    @in_use = false
  end
end

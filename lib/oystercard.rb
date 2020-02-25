class Oystercard
  attr_reader :balance, :in_use
MAXIMUM_BALANCE = 90
MINIMUM_BALANCE = 1
MINIMUM_CHARGE = 3
  def initialize(balance = 0)
    @balance = balance # Balance is 0
    @in_use = false
  end

  def top_up(amount)
    fail "Balance cannot exceed #{MAXIMUM_BALANCE}" if @balance + amount > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    @in_use
  end

  def touch_in
<<<<<<< HEAD
    # fail "Currently in journey" if @in_journey?
    fail "Insufficient balance to touch in" if balance <= 1
=======
    raise "Insufficient balance to touch in" if @balance < MINIMUM_BALANCE
>>>>>>> 53c16ebe8840339f482644921ade27f0a0e135f8
    @in_use = true
  end

  def touch_out
    deduct(MINIMUM_CHARGE)
    @in_use = false
  end
end

private

def deduct(amount)
  @balance -= amount
end

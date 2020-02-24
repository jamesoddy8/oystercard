class Oystercard
  attr_reader :balance
DEFAULT_LIMIT = 90
  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(amount)
    fail "Balance cannot exceed #{DEFAULT_LIMIT}" if @balance + amount > DEFAULT_LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_use
  end

  def touch_in
    # fail "Currently in journey" if @in_journey?
    @in_use = true
  end

  def touch_out
    # fail "Not in journey" unless @in_journey?
    @in_use = false
  end
end

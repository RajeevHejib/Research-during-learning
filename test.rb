

class Account
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end

  def check_balance
    @balance
  end

  private
  def set_balance(balance)
    @balance = balance
  end

end

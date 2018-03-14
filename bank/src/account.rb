class Account
  def initialize(ac_no,holder_name,balance=nil)
    @ac_no=ac_no
    @holder_name=holder_name
    @balance=0
    @balance=balance unless balance.nil? 
  end
  def getName
    return @holder_name
  end
  def getBalance
    return @balance
  end
  def to_s
    return "#{@holder_name}'s 
    account number is #{@ac_no} with amount #{@balance}"
  end
  def credit(money)
    @balance += money
  end
  def debit(money)
    @balance -= money
  end
end

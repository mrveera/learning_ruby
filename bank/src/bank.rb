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


class Bank

  def initialize(name,initial_ac_no)
    @ac_no_counter=initial_ac_no
    @name=name
    @accounts=[]
  end

  def create_account(name)
    @accounts.push(Account.new(@ac_no_counter,name))
    @ac_no_counter += 1
  end

  def to_s
    puts "I have #{@accounts.length} accounts"
  end
end

kotak=Bank.new("kotak",8)
kotak.create_account("veera")
kotak.to_s

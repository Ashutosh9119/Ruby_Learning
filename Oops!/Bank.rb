puts"Bank managment System:"

class Bank
  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    if amount>0
      self.balance += amount
    end
    puts"Balance after deposit: #{balance}"
  end

  def withdrwa
    puts "Enter amount to withdrawl: "
    amount = gets.chomp.to_i
    begin
    raise "Insufficent balance" unless amount > 0 and amount<= @balance
    self.balance -= amount
    puts"Withdrew amount is : #{amount}.New balance: #{@balance}"
    rescue 
      puts "Enter valid Amount."
    end
  end

  def show_balance
    puts"Current balance : #{@balance}"
  end

  private
  attr_accessor :balance

  account =Bank.new(10000)
  account.show_balance
  account.deposit(5000)
  account.withdrwa

end

require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end 

  def deposit(ammount)
    @balance += ammount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else
      return false #had to put false here or else was getting nil
    end
  end

  def close_account
    self.status = "closed"
  end

end

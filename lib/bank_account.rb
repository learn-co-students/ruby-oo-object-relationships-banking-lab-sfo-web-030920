require 'pry'
class BankAccount
    #ready
    attr_accessor :balance, :status
    attr_reader :name
    @@all = []
    def initialize(name, balance = 1000)
        @name = name
        @balance = balance
        @status = "open"
        @@all << self
    end

    def deposit(amount)
        @balance += amount
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid? 
        if @balance > 0 && @status == "open"
            true
        else 
            false
        end
    end
    
    def close_account
        self.status = "closed"
    end

    def self.all
        @@all
    end

end

# cindy = BankAccount.new("cindy")
# binding.pry
# puts 's'
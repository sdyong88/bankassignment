class BankAccount
	attr_accessor :create, :checking_balance,:saving_balance
	@@accounts = 0
	def initialize
		@account_number
		@checking_balance = 0
		@saving_balance = 0
		@total_amount = @saving_balance + @checking_balance
		gen_account_num
		@@accounts += 1
		@create = true
		self
	end
	def account_number
		puts @account_number
		self
	end
	def checking
		puts @checking_balance
		self
	end
	def saving
		puts @saving_balance
		self
	end
	def total_amount
		puts @total_amount
		self
	end

	def deposit_checking(cash)
		if cash.to_i == cash
			puts "#{cash} deposited into checking"
			@checking_balance += cash
		end 
		self
	end
	def deposit_saving(cash)
		if cash.to_i == cash
			puts "#{cash} deposited into savings"
			@saving_balance += cash
		end
		self
	end
	def withdraw_checking(cash)
		if cash.to_i > @checking_balance
			puts "You have insufficent funds"
		else cash.to_i == cash
			puts "#{cash} withrawn from checking"
			@checking_balance -= cash
		end
	end
	def withdraw_saving(cash)
		if cash.to_i > @saving_balance
			puts "You have insufficent funds"
		else cash.to_i == cash
			puts "#{cash} withrawn from checking"
			@checking_balance -= cash
		end
	end
	def num_accounts
		puts @@accounts
	end
	def account_information
		puts @account_number, @total_amount, @checking_balance, @saving_balance, @interest_rate
	end
	private
	attr_accessor :interest_rate
	def interest_rate
		@interest_rate = ranrd(4)
	end

	def gen_account_num()
		@account_number = (0..4).map { (1..4).to_a[rand(5)]}.join
		self
	end
end

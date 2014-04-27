class CreateBankTransactions < ActiveRecord::Migration
	def self.up
		create_table :bank_transactions do |t|
			t.references :user
			t.references :bank
			t.float :amount
			t.date :transaction_date

			t.timestamps
		end
	end

	def self.down
		drop_table :bank_transactions
	end
end

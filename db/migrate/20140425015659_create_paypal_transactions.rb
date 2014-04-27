class CreatePaypalTransactions < ActiveRecord::Migration
	def self.up
		create_table :paypal_transactions do |t|
			t.references :user
			t.references :paypal
			t.float :amount
			t.date :transaction_date

			t.timestamps
		end
	end

	def self.down
		drop_table :paypal_transactions
	end
end

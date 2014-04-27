class CreateWpTransactions < ActiveRecord::Migration
	def self.up
		create_table :wp_transactions do |t|
			t.references :account
			t.float :amount
			t.date :transaction_date
			t.date :expire_date

			t.timestamps
		end
	end

	def self.down
		drop_table :wp_transactions
	end
end

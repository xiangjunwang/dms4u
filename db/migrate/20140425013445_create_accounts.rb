class CreateAccounts < ActiveRecord::Migration
	def self.up
		create_table :accounts do |t|
			t.references :user
			t.references :workplace
			t.references :country
			t.string :username
			t.string :password
			t.string :email
			t.string :email_password
			t.references :status

			t.timestamps
		end
	end

	def self.down
		drop_table :accounts
	end
end

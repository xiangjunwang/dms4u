class CreateBanks < ActiveRecord::Migration
	def self.up
		create_table :banks do |t|
			t.string :account_no
			t.string :swift_code
			t.string :owner_name
			t.string :address
			t.references :status
			
			t.timestamps
		end
	end

	def self.down
		drop_table :banks
	end
end

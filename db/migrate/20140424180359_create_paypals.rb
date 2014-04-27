class CreatePaypals < ActiveRecord::Migration
	def self.up
		create_table :paypals do |t|
			t.string :email
			t.string :name
			t.references :status
			
			t.timestamps
		end
	end

	def self.down
		drop_table :paypals
	end
end

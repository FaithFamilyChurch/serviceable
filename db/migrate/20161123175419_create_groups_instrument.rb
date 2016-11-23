class CreateGroupsInstrument < ActiveRecord::Migration
	def change
		create_table :groups_instruments, :id => false do |t|
			t.belongs_to :group, index: true
			t.belongs_to :instrument, index: true
		end
	end
end

class CreateGroupsItem < ActiveRecord::Migration
	def change
		create_table :groups_items, :id => false do |t|
			t.belongs_to :group, index: true
			t.belongs_to :item, index: true
		end
	end
end

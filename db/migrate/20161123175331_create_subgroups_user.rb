class CreateSubgroupsUser < ActiveRecord::Migration
	def change
		create_table :subgroups_users, :id => false do |t|
			t.belongs_to :subgroup, index: true
			t.belongs_to :user, index: true
		end
	end
end

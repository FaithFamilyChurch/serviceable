class CreateGroupsService < ActiveRecord::Migration
	def change
		create_table :groups_services, :id => false do |t|
			t.belongs_to :group, index: true
			t.belongs_to :service, index: true
		end
	end
end

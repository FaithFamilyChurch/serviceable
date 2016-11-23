class RenameParentGroupIdToGroupId < ActiveRecord::Migration
	def change
		rename_column :subgroups, :parent_group_id, :group_id
	end
end

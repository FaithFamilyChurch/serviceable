class CreateItemsService < ActiveRecord::Migration
	def change
		create_table :items_services, :id => false do |t|
			t.belongs_to :item, index: true
			t.belongs_to :service, index: true
		end
	end
end

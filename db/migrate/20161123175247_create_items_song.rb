class CreateItemsSong < ActiveRecord::Migration
	def change
		create_table :items_songs, :id => false do |t|
			t.belongs_to :item, index: true
			t.belongs_to :song, index: true
		end
	end
end

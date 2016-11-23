class CreateSongKeysSong < ActiveRecord::Migration
	def change
		create_table :song_keys_songs, :id => false do |t|
			t.belongs_to :song_key, index: true
			t.belongs_to :song, index: true
		end
	end
end

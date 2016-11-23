class Song < ActiveRecord::Base

	has_many :sheet_musics

	has_and_belongs_to_many :items
	has_and_belongs_to_many :song_keys

end

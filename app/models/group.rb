class Group < ActiveRecord::Base

	belongs_to :group_type
	has_many :subgroups
	has_many :sheet_musics

	has_and_belongs_to_many :services
	has_and_belongs_to_many :items
	has_and_belongs_to_many :users
	has_and_belongs_to_many :instruments

end

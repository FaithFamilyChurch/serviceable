class Item < ActiveRecord::Base

	belongs_to :item_type

	has_and_belongs_to_many :groups
	has_and_belongs_to_many :services
	has_and_belongs_to_many :songs
	has_and_belongs_to_many :users

end

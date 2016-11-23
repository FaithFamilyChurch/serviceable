class Service < ActiveRecord::Base

	belongs_to :schedule

	has_and_belongs_to_many :groups
	has_and_belongs_to_many :items

end

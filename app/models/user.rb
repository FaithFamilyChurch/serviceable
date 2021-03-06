class User < ActiveRecord::Base

	has_and_belongs_to_many :items
	has_and_belongs_to_many :groups
	has_and_belongs_to_many :subgroups
	has_and_belongs_to_many :instruments


	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
			:recoverable, :rememberable, :trackable, :validatable

end

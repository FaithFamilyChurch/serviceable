class SheetMusic < ActiveRecord::Base

	belongs_to :group
	belongs_to :song

end

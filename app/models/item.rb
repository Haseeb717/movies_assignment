class Item < ApplicationRecord

	validates_presence_of :plot,:title
	
	scope :movies, -> { where('type =?','movie').order('created_at ASC') }
	scope :seasons, -> { where('type =?','season').order('created_at ASC') }
	scope :list, -> { order('created_at ASC') }
end

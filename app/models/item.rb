class Item < ApplicationRecord

	validates_presence_of :plot,:title,:item_type
	validates :serial_number, presence: true, if: -> {item_type == "Season"}

	scope :movies, -> { where('item_type =?','movie').order('created_at ASC') }
	scope :seasons, -> { where('item_type =?','season').order('created_at ASC') }
	scope :list, -> { order('created_at ASC') }
end

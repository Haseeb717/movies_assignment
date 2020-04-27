class Episode < ApplicationRecord
	validates_presence_of :plot,:title
  belongs_to :item
end

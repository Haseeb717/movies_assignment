class Episode < ApplicationRecord
	validate_presence_of :plot,:title
  belongs_to :item
end

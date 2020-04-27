class User < ApplicationRecord
	has_many :purchases
	has_many :items, through: :purchases

	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

	def libaray
		self.items.where('expire_at <?',Time.current).order('expire_at ASC')
	end
end

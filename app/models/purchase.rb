class Purchase < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :purchase_option

  VALIDITY = 3.days

  def add_library(params)
  	valid = check_validity(params)
  	return {status: 403,message: "Expired VALIDITY not reached"}

  	purchase = Purchase.create(params)
  	return {status: 200,message: "Created Succesfully"}
  end

  private

  def check_validity(params)
  	purchases = Purchase.where(params)
  	if purchases.present?
  		expire_at = purchases.last.expire_at
  		if Time.current < (expire_at + VALIDITY)
  			return false
  		end
  		return true
  	else

  	end
  end
end

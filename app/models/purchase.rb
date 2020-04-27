class Purchase < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :purchase_option

  validate_presence_of :item_id,:user_id,:purchase_option_id

  VALIDITY = 1.day

  def add_library(params)
  	valid = check_validity(params)
  	return {status: 403,message: "Expired VALIDITY not reached"}

  	params[:purchase_at] = Time.now
  	purchase[:expire_at] = Time.now + 2.days
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
  	end
  	return true
  end
end

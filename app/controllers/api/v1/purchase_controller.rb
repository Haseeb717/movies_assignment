module Api
	module V1
		class PurchaseController < ApplicationController

			# 4. An endpoint for a user to perform a purchase of a content.
			# /api/v1/buy 

			def buy
				response = Purchase.add_library(purchase_params)
				render json: {message: response}
			end

			private

			def purchase_params
				params.require(:purchase).permit(:user_id,:item_id,:purchase_option_id)
			end
     
		end
	end
end

 
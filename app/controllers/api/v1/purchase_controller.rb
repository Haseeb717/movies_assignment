module Api
	module V1
		class PurchaseController < ApplicationController
			def buy
				response = Purchase.add_library(purchase_params)
				render json: {message: response}, :status=>200
			end

			private

			def purchase_params
				params.require(:purchase).permit(:user_id,:item_id,:purchase_option_id)
			end
     
		end
	end
end

 
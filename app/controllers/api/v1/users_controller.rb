module Api
	module V1
		class UsersController < ApplicationController
			def library
				user = User.find_by_id(params[:id])
				render json: ItemsController.new(user.library) if user.present?
				render json: {error: "User Not Found"}, :status=>404 unless user.present?
			end
		end
	end
end
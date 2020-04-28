module Api
	module V1
		class UsersController < ApplicationController

			# 5. An endpoint to get the library of a user ordered by the remaining time to watch the content
			# /api/v1/user/:id/library 

			def library
				user = User.find_by_id(params[:id])
				render json: ItemPresenter.new(user.library) if user.present?
				render json: {error: "User Not Found"}, :status=>404 unless user.present?
			end
		end
	end
end
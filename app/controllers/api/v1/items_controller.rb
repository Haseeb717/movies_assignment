module Api
	module V1
		class ItemsController < ApplicationController

			# 1. An endpoint to return the movies, ordered by creation
			# /api/v1/movies 

			def movies
				render json: ItemPresenter.new(Item.movies.all)
			end

			# 2. An endpoint to return the seasons ordered by creation, including the list of episodes ordered by its number
			# /api/v1/seasons 

			def seasons
				render json: ItemPresenter.new(Item.seasons.all)
			end

			# 3. An endpoint to return both movies and seasons, ordered by creation
			# /api/v1/list 

			def index
				render json: ItemPresenter.new(Item.list.all)
			end
		end
	end
end
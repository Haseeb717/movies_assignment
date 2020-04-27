module Api
	module V1
		class ItemsController < ApplicationController
			def movies
				render json: ItemPresenter.new(Item.movies.all)
			end

			def seasons
				render json: ItemPresenter.new(Item.seasons.all)
			end

			def index
				render json: ItemPresenter.new(Item.list.all)
			end
		end
	end
end
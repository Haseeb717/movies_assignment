Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api,:defaults: {format: :json} do
  	namespace :v1 do
  		get 'movies' => 'items#movies',as: :movies
  		get 'seasons' => 'items#seasons',as: :seasons
  		get 'list' => 'items#list',as: :list
  		post 'buy' => 'purchases#buy',as: :buy
  		get 'user/:id/library' => 'users#library',as: :user_library
  	end
  end

end

Rails.application.routes.draw do

  get 'venues/index' => 'venues#index'

  get 'venues/new' => 'venues#new'

  get 'venues/edit' => 'venues#edit'

  get 'venues/show' => 'venues#show'

  get 'guests' => 'guests#index'

  get 'guests/new' => 'guests#new'

  get 'guests/:id/edit' => "guests#edit"

  get 'guests/show'

  get 'home' => 'home#index'

	stormpath_rails_routes
  # get 'main/index'

  root 'main#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :venues
end

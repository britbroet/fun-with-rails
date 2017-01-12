Rails.application.routes.draw do
	stormpath_rails_routes
  # get 'main/index'

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

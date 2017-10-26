Rails.application.routes.draw do

  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :pokemons, only: [:index, :show]
        resources :users, only: [:index, :show, :create, :update]
      end
    end
  end

end

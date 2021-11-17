Rails.application.routes.draw do
  resources :restaurants do
    collection do
      # /restaurants/top
      get :top
    end

    member do
      # /restaurants/:id/chef
      get :chef
    end

    # /restaurants/:restaurant_id/reviews/...
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

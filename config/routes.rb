Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # to get # top_restaurants  GET  /restaurants/top(.:format)  restaurants#top
  resources :restaurants do
    collection do
      get :top
    end
  end
  resources :restaurants do
    member do
      get :chef
    end
  end
end

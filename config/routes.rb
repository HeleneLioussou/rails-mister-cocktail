Rails.application.routes.draw do

root 'cocktails#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    member do                     # member => restaurant id in URL
      get 'ingredients', to: "cocktails#ingredients" # RestaurantsController#chef
    end
    resources :doses, only: [:new, :create ]
  end

  resources :ingredients

  resources :doses, only: [:update, :edit, :destroy]

end

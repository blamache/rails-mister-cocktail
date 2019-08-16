Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # A user can see the list of cocktails
  # GET "cocktails"
  # A user can see the details of a given cocktail, with the dose needed for each ingredient
  # GET "cocktails/42"
  # A user can create a new cocktail
  # GET "cocktails/new"
  # POST "cocktails"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root (correction) : pourquoi ...
  root to: 'cocktails#index'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create]
#    resources :reviews, only: [:create]
  end
  # route speciale pour destroy
  resources :doses, only: [:destroy]

end

Rails.application.routes.draw do
  resources :subscription_histories
  resources :subscrptions
  resources :users
  resources :themes
  resources :copies
  resources :publications
  resources :authors_publications
  resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

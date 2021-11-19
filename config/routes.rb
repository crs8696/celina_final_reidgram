Rails.application.routes.draw do
  root :to => "followers#index"
  resources :tags
  resources :likes
  resources :comments
  resources :pictures
  resources :users
  resources :followers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

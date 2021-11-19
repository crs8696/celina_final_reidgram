Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    scope module: 'api/v1', as: 'api' do
      resources :users

      resources :followers

    end
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root :to => "followers#index"
  resources :tags
  resources :likes
  resources :comments
  resources :pictures
  resources :users
  resources :followers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

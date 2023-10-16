Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :regions, only: %i[index show], defaults: { format: :json }
    end
  end
end

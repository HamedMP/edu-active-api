Rails.application.routes.draw do
  root 'home#index'

  namespace :v1, defaults: { format: 'json' } do
    resources :categories, only: :index
  end
end

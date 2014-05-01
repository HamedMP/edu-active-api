Rails.application.routes.draw do
  resources :categories, except: [:new, :edit]
  root 'home#index'
end

Rails.application.routes.draw do
  resources :companies
  devise_for :users, skip: [:registrations]
  root to: 'home#index'
  resources :users
end

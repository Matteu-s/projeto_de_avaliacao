Rails.application.routes.draw do
  resources :equipments
  resources :companies do
    member do
      delete 'delete_logo'
    end
  end
  devise_for :users, skip: [:registrations]
  root to: 'home#index'
  resources :users
end

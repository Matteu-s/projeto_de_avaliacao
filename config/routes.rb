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
  post '/consulta_cep', to: 'consulta_cep#consulta_cep'
  get '/load_data', to: 'home#load_data'
end

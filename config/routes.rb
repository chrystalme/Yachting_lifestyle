Rails.application.routes.draw do
  root 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'log_in', to: 'users#new', as: 'log_in'
  post 'log_in', to: 'users#create'

  get 'sign_up', to: 'sessions#new', as: 'sign_up'
  post 'sign_up', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'
end

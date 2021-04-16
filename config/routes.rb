Rails.application.routes.draw do
  
  root 'sessions#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'sign_up', to: 'users#new', as: 'sign_up'
  post 'sign_up', to: 'users#create'

  get 'log_in', to: 'sessions#new', as: 'log_in'
  post 'log_in', to: 'sessions#create'

  delete 'log_out', to: 'sessions#destroy'
  resources :articles do
     resources :votes, only: %i[create destroy]
  end
  resources :categories, only: %i[index show]

end

Rails.application.routes.draw do
  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :show, :new, :create ]
  end

  resources :reviews, only: [ :show ]

  root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

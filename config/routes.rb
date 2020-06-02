Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: %i[index show] do
    resources :reviews, only: :create
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
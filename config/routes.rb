Rails.application.routes.draw do
  resources :favourites, param: :number, only: [:create, :destroy]
  resources :fizz_buzzes, param: :number, only: [:show]
  root to: 'fizz_buzzes#index'
end

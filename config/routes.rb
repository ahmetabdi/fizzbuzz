Rails.application.routes.draw do

    scope module: 'api' do
      namespace :v1 do
        resources :favourites, param: :number, only: [:create, :destroy]
        resources :fizz_buzzes, param: :number, only: [:show]
      end
    end

  resources :favourites, param: :number, only: [:create, :destroy]
  resources :fizz_buzzes, param: :number, only: [:show]
  root to: 'fizz_buzzes#index'
end

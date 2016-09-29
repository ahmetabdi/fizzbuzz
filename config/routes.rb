Rails.application.routes.draw do
  resources :favourites, param: :number, only: [:create, :destroy]
  root to: 'pages#home'
end

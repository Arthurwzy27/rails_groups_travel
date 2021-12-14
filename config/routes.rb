Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :travels do
    resources :teams
  end
end

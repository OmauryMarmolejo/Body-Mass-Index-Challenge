Rails.application.routes.draw do
  devise_for :users
  root to: "consults#index"
  resources :consults
  resources :users
end

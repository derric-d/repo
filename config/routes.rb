Rails.application.routes.draw do
  devise_for :users
  get 'queries/index'
  get 'welcome/index'
  root to: 'queries#index'
  resources :query
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

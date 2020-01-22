Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  resources :divisions do
    resources :employees
  end
end

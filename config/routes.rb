Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  namespace :project do
    resources :tasks
  end
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/dash'
  devise_for :users
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

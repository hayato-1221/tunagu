Rails.application.routes.draw do
  resources :clients
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "texts#index"
  resources :texts
  devise_for :users
end

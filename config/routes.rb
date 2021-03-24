Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "clients#index"
  devise_for :users
  resources :clients
  resources :visit_histories
  resources :medical_treatment_histories
end

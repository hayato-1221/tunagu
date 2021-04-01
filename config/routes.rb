Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "clients#index"
  devise_for :users, controllers: {
                       registrations: "users/registrations",
                       passwords: "users/passwords",
                     }
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#new_guest"
  end
  resources :clients
  resources :visit_histories
  resources :medical_treatment_histories
  resources :earnings
  resources :client_earnings
end

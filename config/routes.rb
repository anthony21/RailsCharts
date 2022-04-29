require 'resque/server'
require 'resque/scheduler/server'

Rails.application.routes.draw do

 get 'sign_in', to: 'sessions#new', as: :new_session
 post 'sign_in', to: 'sessions#create', as: :session
 delete 'sign_out', to: 'sessions#destroy', as: :destroy_session

 get 'sign_up', to: 'registrations#new', as: :new_sign_up
 post 'sign_up', to: 'registrations#create', as: :sign_up
 delete 'profile', to: 'registrations#edit', as: :edit_profile

 
 resources :accounts do 
    get :history, on: :member
 end
 resources :users, except: %i(destroy) do
  get :history, on: :member
  resources :features, only: %i(index update)
 end

 get 'admin', to: 'admin#index'
 root to: 'home#index'

end

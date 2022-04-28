require 'resque/server'
require 'resque/scheduler/server'

Rails.application.routes.draw do

 resources :users, except: %i(destroy) do
  get :history, on: :member
 end

 get 'admin', to: 'admin#index'
 root to: 'home#index'

end

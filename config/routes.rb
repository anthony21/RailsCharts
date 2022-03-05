Rails.application.routes.draw do


  get 'layouts/index'


  get 'students/first'
  get 'students/middle'
  get 'students/last'
  get 'students/index'
  get 'students/prefix'

  get 'students/address1'
  get 'students/address2'
  get 'students/city'
  get 'students/state'
  get 'students/zip_code'
  get 'students/education'
  get 'students/income'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

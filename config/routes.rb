Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/index'
  get 'static_pages/secret'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "static_pages#index"

   resources "static_pages"

end

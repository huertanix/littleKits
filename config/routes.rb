Rails.application.routes.draw do
  resources :bits
  resources :users
  resources :inventions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => "inventions#index"
end

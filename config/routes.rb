Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  root 'home#index'
  get 'home/ruby_meetup'
  
  resources :posts do
  post 'rsvps', to: 'rsvps#create', on: :member
end

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

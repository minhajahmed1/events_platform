Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/ruby_meetup'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

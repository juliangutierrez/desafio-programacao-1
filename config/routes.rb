Rails.application.routes.draw do
  devise_for :users
  get 'uploads/new'
  post 'uploads/create'

  root 'uploads#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

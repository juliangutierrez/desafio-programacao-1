Rails.application.routes.draw do
  get 'uploads/new'
  get 'uploads/create'

  root 'uploads#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

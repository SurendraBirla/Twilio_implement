Rails.application.routes.draw do
  resources :messages, only: [:new, :create]
  root 'messages#new'
end

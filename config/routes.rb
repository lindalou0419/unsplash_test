Rails.application.routes.draw do
  resources :entries
  resources :images
  root 'entries#index'
end

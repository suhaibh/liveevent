Rails.application.routes.draw do
  resources :contacts, only: [:index, :create, :new]
  root 'site_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end

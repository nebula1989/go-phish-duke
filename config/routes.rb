Rails.application.routes.draw do
  root 'pages#home'

  resources :phishes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'phishes/new', to: 'phishes#new', as: :phish_form
end

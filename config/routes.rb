Rails.application.routes.draw do
  get 'pages/home'
  root to: "pages#home"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :months
  resources :fish
  resources :bugs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

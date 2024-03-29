Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  devise_for :users
  resources :reportes
  resources :equipos

  resources :clientes do
    resources :sucursales, only: %i[new create index]
  end

resources :sucursales, only: %i[destroy show edit update]


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  get 'graficos', to: 'pages#graficos'
  get 'informes', to: 'pages#informes'
  get 'equipos_sucursal', to: 'equipos#equipos_sucursal'
end

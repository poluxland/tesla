Rails.application.routes.draw do
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
end

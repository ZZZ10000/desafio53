


  Rails.application.routes.draw do
    # Definir rutas para los modelos usando resources
    resources :movies, only: [ :index, :new, :create ]
    resources :series, only: [ :index, :new, :create ]
    resources :documentaries, only: [ :index, :new, :create ]

    # Definir la ruta raíz
    root "pages#index"
  end

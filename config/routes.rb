Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :detalle_venta
      resources :privilegios
      resources :categoria do
        resources :productos, only: [:index]
      end
      resources :productos
      resources :venta
      resources :usuarios do
        collection do
          get :find_by_email
          get :find_id_by_email
          get :find_priv_by_email
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

Rails.application.routes.draw do
  # TODO: this needs testing and using properly
  constraints Clearance::Constraints::SignedIn.new do
    root to: "home#show"
  end

  root to: "home#show"

  resources :pictures, only: [:create, :new]
  resources :organisations, only: [:show] do
    member do
      get "/access", to: "access_code_sessions#new", as: "new_access"
      post "/access", to: "access_code_sessions#create"
    end
  end

  resources :users, only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only:       [:create, :edit, :update]
  end
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource  :session, controller: "clearance/sessions", only: [:create]

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "users#new", as: "sign_up"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

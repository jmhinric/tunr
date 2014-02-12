Tunr::Application.routes.draw do
  
  resources :artists do
    resources :songs
  end
  
  resources :users do
  end

  # get "/", to: "welcome#index"
  

  # resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "session#new"
  post "/session", to: "session#create"
  delete "/session", to: "session#destroy"
  
  root "welcome#index"

end

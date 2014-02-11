Tunr::Application.routes.draw do
  
  resources :artists do
    resources :songs
  end
  
  resources :users do
  end

  # get "/", to: "welcome#index"
  root "welcome#index"

end

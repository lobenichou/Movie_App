Movie2App::Application.routes.draw do
  root to: "home#index"

  resources :movies

end

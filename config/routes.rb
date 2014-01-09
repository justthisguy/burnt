Burnt::Application.routes.draw do
  resources :locations, defaults: {format: :json}

  root :to => 'assets#index'
  get "assets/index"
end

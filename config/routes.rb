Burnt::Application.routes.draw do
  resources :locations

  root :to => 'assets#index'
  get "assets/index"
end

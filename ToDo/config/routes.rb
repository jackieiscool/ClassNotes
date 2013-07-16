ToDo::Application.routes.draw do
  root :to => 'lists#index'

  resources :lists do
    resources :items
  end
  
end

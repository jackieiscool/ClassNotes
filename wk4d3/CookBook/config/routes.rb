CookBook::Application.routes.draw do

  resources :books do
    resources :recipes do
      resources :ingredients
    end
  end
end

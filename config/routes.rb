Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:show, :new, :create]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


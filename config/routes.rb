Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  resources :genres, only: [:new, :create, :edit, :update, :show]
  resources :artists, only: [:new, :create, :edit, :update, :show]
end

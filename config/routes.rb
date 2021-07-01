Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :artists, only: [:show] do
    resources :songs, only: [:show, :index]
  end

  resources :songs
end

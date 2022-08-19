Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create] do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :bookmarks, only: [:destroy]
end

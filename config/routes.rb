Spotifake::Application.routes.draw do
  resources :bands do
    resources :albums, shallow: true do
      resources :tracks, shallow: true
    end
  end

  resource :session, only: [:create, :new, :destroy]
  resources :users, only: [:create, :new]

end

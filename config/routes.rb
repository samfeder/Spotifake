Spotifake::Application.routes.draw do
  resources :bands do
    resources :albums, only: [:new, :show, :index] do
      resources :tracks, only: [:new, :show, :index]
    end
  end

  resources :albums, except: [:new, :show, :index]


  resources :track, except: [:new, :show, :index]

  resources :users, only: [:create, :new]
  resource :session, only: [:create, :destroy, :new]

end

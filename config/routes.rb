UniteToBuyIt::Application.routes.draw do

  root :to => 'site#index'

  get '/signup' => 'users#new', as: :signup

  get '/login' => 'sessions#new', as: :login
  get '/logout' => 'sessions#destroy', as: :logout

  resources :sessions

  scope '/api/' do
    resources :users, except: [ :new, :edit ], defaults: { format: :json }
    resources :addresses, except: [:new, :edit ], defaults: { format: :json }
    resources :group_buys, except: [ :new, :edit ], defaults: { format: :json }
    resources :orderable_sets, except: [ :new, :edit ], defaults: { format: :json }
    resources :orders, except: [ :new, :edit ], defaults: { format: :json }
  end
end

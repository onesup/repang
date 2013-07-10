Repang::Application.routes.draw do
  resources :competitions


  match 'admin' => 'admin/dashboard#index', :via => :get, :as => "admin" 
  get "logout"  => "sessions#destroy", :as => "logout"
  get "login"   => "sessions#new", :as => "login"
  resources :users, :only => [:create]
  resources :sessions
  resources :events, :only => [:index, :show]
   
  namespace :admin do
    resources :events do
      collection do
        get :latest_event
        get :join_event
      end
    end
    resources :users
  end
  
  root :to => "events#latest_event"
end

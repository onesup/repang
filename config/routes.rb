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
    end
    resources :users, :only => [:edit]
  end
  

  # root :to => "events#index"  
  root :to => "events#show", :id => Event.last_event.id # Event.last_event
end

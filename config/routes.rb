Goforit::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :users do
  	resources :goals, :partners
  end

  resources :users
  resources :goals

end
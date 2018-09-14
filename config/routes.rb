Rails.application.routes.draw do
  root :to => 'portfolios#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :portfolios, :only => [:index]

  resources :admins, :only => [:index]

  resources :skills, :hobbies, :projects, :only => [:new, :create, :destroy, :edit, :update]

  post 'contact' => 'portfolios#contact'
end

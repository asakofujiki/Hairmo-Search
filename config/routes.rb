Rails.application.routes.draw do

  root 'home#top'
  get 'about' => 'home#about'

  devise_for :models
  devise_for :hairdressers, :controllers => {
  	:registrations => 'hairdressers/registrations',
  	:sessions => 'hairdressers/sessions'
  }

  post post '/models/guest_sign_in', to: 'models#new_model_guest'
  post post '/hairdressers/guest_sign_in', to: 'hairdressers#new_hairdresser_guest'

  resources :hairdressers, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :hair_catalogs, only: [:new, :create, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
  end

  resources :models, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :rooms, only: [:create, :show] do
    resource :messages, only: [:create]
  end

  resources :notifications, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

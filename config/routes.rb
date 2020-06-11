Rails.application.routes.draw do

  root 'home#top'
  get 'about' => 'home#about'

  devise_for :models
  devise_for :hairdressers, :controllers => {
  	:registrations => 'hairdressers/registrations',
  	:sessions => 'hairdressers/sessions'
  }

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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

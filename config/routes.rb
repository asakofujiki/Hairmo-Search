Rails.application.routes.draw do

  root 'home#top'
  get 'about' => 'home#about'

  devise_for :models
  devise_for :hairdressers, :controllers => {
  	:registrations => 'hairdressers/registrations',
  	:sessions => 'hairdressers/sessions'
  }

  resources :hairdressers, only: [:index, :show, :edit, :update]
  resources :hair_catalogs, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :models, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

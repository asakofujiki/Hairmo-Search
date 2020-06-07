Rails.application.routes.draw do
  
  devise_for :hairdressers, :controllers => {
  	:registrations => 'hairdressers/registrations',
  	:sessions => 'hairdressers/sessions'
  }

  root 'home#top'
  get 'about' => 'home#about'

  resources :hairdressers, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

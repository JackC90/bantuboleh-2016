Rails.application.routes.draw do
# modal#Event
  resources :event_volunteers, only: [:create, :update]
  # resources :event_details
  resources :events

  resources :profiles
  resources :organisation_profiles
  devise_for :users, :controllers => { registrations: "users/registrations", omniauth_callbacks: "users/omniauth_callbacks" }
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "events#index"

end

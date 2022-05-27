Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :tweets do
    resources :comments
  end
  root "tweets#index"
  resources :friend_requests
end

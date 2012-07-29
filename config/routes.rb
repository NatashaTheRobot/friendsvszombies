Friendsvszombies::Application.routes.draw do
  root to: 'facebook_login#show'
  resources :facebook_login
  match '/auth/facebook/callback', to: 'sessions#create'
  match '/signout' => 'sessions#destroy', as: :signout
end

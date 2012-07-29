Friendsvszombies::Application.routes.draw do
  root to: 'friends#show'
  resources :friends
  match '/auth/facebook/callback', to: 'sessions#create'
  match '/signout' => 'sessions#destroy', as: :signout
end

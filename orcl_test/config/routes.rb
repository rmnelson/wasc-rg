Rails.application.routes.draw do
  resources :comics

  root 'comics#index'

end

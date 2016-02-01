Rails.application.routes.draw do

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  #AH testing shit:
  get '/warriors/:id', to: 'fighters#show'
  get '/warriors/:id', to: 'fighters#show', as: 'guerrero'
  get 'profile', to: 'users#show'
  # get 'profile', to: :show #not working

end

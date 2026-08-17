Rails.application.routes.draw do
  get 'monsters', to: 'monsters#index', as: :monsters
  get 'monsters/:id', to: 'monsters#show', as: :monster

  root "monsters#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

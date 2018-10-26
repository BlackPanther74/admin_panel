Rails.application.routes.draw do
  get 'cohortsstudents/new'
  get 'cohortsstudents/create'
  resources :users, except: [:new]
  resources :profiles
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
  resources :home

  root to: 'home#index'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new', as: 'signup'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  post '/cohorts/:id', to: 'cohortsstudents#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

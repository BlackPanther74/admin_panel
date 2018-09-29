Rails.application.routes.draw do
  resources :users
  resources :profiles
  resources :courses
  resources :cohorts
  resources :instructors
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

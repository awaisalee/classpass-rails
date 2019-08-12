Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '' => 'users#index'
  get '/classes' => 'workout_times#index'

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :workout_rosters, only: [:new, :create, :destroy]
end

Rails.application.routes.draw do

  resources :comments
  resources :courses
  resources :students
  get 'homepage/index'
  resources :subjects
  resources :announcements
  resources :classrooms

  root 'homepage#index'

  devise_for :users, path: "auth", path_names: { sign_in: "login", sign_out: "logout", password: "secret", confirmation: "verification" }
  resources :users
  
end

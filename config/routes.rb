Rails.application.routes.draw do

  get 'errors/not_found'
  get 'errors/internal_server'
  get 'errors/unprocessable'
  get '/404', to: 'errors#not_found', via: :all
  get '/500', to: 'errors#internal_server', via: :all
  get '/422', to: 'errors#unprocessable', via: :all

  resources :comments, only: [:create, :new]
  resources :courses
  resources :students
  get 'homepage/index'
  resources :subjects
  resources :announcements
  resources :classrooms
  
  get "classrooms/:id/courses", to: "classrooms#classroom_course"
  get "classrooms/:id/students", to: "classrooms#classroom_students"

  root 'homepage#index'

  devise_for :users, path: "auth", path_names: { sign_in: "login", sign_out: "logout", password: "secret", confirmation: "verification" }
  resources :users
  
end

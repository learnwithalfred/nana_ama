Rails.application.routes.draw do

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

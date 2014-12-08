Rails.application.routes.draw do
  get 'start/index'

  resources :grades

  resources :course_works

  resources :courses
  post "course/load_students" => 'courses#load_students', as: 'load_students'

  resources :students

  resources :programs

  resources :ipas

  resources :outcomes

  resources :teachers

  resources :semesters

  devise_for :users
  root 'start#index'
end

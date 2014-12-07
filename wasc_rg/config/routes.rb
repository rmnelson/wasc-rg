Rails.application.routes.draw do
  get 'start/index'

  resources :grades

  resources :course_works

  resources :courses

  resources :students

  resources :programs

  resources :ipas

  resources :outcomes

  resources :teachers

  resources :semesters

  devise_for :users
  root 'start#index'
end

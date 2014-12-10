Rails.application.routes.draw do
  get 'start/index'

  resources :grades


  resources :courses do
  	resources :course_works, :shallow => true
  	post "load_students" => 'courses#load_students', as: 'load_students'
	get "load_works" => 'course_works#load_works', as: 'course_work_upload'
	post "load_works" => 'course_works#load_works'
  end

  resources :students

  resources :programs

  resources :ipas

  resources :outcomes

  resources :teachers

  resources :semesters

  devise_for :users
  root 'start#index'
end

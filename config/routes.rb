Rails.application.routes.draw do
  devise_for :users
  #get 'users/index'
  #get 'users/destroy'

  resources :student_subjects
  resources :students
  resources :book_subjects
  resources :books
  resources :subject_teachers
  resources :subjects
  resources :teachers
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

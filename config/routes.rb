Rails.application.routes.draw do
  resources :curriculums
  resources :students
  resources :cohorts
  resources :teachers
  resources :schools do
    resources :enrollments
  end
  resources :transfers, only: [:new, :create, :index]
end

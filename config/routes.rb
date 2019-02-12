Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 1. Read all the tasks
  get 'tasks', to: 'tasks#index'

  # 2. Read one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task
end

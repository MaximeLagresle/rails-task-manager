Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 3. Add a new task
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'

  # 1. Read all the tasks
  get 'tasks', to: 'tasks#index'

  # 2. Read one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # 3. Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # 4. Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end

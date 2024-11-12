Rails.application.routes.draw do
  # Create
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show
  get 'tasks/:id', to: 'tasks#show', as: :task

  # index
  get 'tasks', to: 'tasks#index'

  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete "tasks/:id", to: "tasks#destroy"
end

Rails.application.routes.draw do

  # display all:
  get 'tasks', to: "tasks#index", as: :tasks

  #create a new task (first get data, then send it)
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # show one item:
  get 'tasks/:id', to: "tasks#show", as: :task

  # update one item:
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch  "tasks/:id", to: "tasks#update"

  #delete one item:
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#all' ,as: :all
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch "tasks/:id", to: 'tasks#update'
  get 'tasks/:id', to: 'tasks#id', as: :task
  delete 'tasks/:id', to: 'tasks#destroy'
end

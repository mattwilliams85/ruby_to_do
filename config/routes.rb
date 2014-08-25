Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
  match('lists', {:via => :post, :to => 'lists#create'})
  match('lists/tasks/:id', {:via => :get, :to => 'tasks#new'})
  match('tasks/:id', {:via => :post, :to => 'tasks#create'})
  match('tasks/:list_id/:id', {:via => :delete, :to => 'tasks#destroy'})
  match('tasks/edit/:list_id/:id', {:via => :get, :to => 'tasks#edit'})
  match('tasks/:list_id/:id', {:via => [:patch, :put], :to => 'tasks#update'})
  match('list/:id', {:via => :delete, :to => 'lists#destroy'})
  match('tasks/done/:list_id/:id', {:via => :get, :to => 'tasks#done'})
end


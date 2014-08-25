Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
  match('lists', {:via => :post, :to => 'lists#create'})
  match('lists/tasks/:id', {:via => :get, :to => 'tasks#new'})
  match('tasks/:id', {:via => :post, :to => 'tasks#create'})
end


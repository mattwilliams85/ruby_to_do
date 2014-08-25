Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
  match('/lists', {:via => :post, :to => 'lists#saved'})
  match('lists/tasks/:id', {:via => :get, :to => 'tasks#new'})
end


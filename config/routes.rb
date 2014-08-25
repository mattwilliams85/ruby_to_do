Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
  match('/lists', {:via => :post, :to => 'lists#saved'})
end


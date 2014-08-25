Wikipages::Application.routes.draw do
  match('/', {:via => :get, :to => 'lists#index'})
end


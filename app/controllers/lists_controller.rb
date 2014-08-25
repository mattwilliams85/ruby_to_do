class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    render('lists/index.html.erb')
  end

  def saved
    @list = List.create(:name => params[:name])
    render('lists/index.html.erb')
  end
end

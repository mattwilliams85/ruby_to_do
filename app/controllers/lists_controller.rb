class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    render('lists/index.html.erb')
  end

  def create
    @lists = List.all
    @list = List.create(:name => params[:name])
    render('lists/index.html.erb')
  end

  def destroy
    @list = List.find(params[:id])
    @lists = List.all
    @list.destroy
    render('lists/index.html.erb')
  end
end

class TasksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @lists = List.all
    @task = Task.new
    @tasks = Task.all
    render('lists/tasks/tasks.html.erb')
  end

  def create
    @list = List.find(params[:id])
    @lists = List.all
    @tasks = Task.all

    @task = Task.create(:name => params[:name],:completed => :false)
    render('lists/tasks/tasks.html.erb')
  end

end


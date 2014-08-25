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

    @task = Task.create(:name => params[:name],:completed => :false, :list_id => @list.id)
    render('lists/tasks/tasks.html.erb')
  end

  def destroy
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    @lists = List.all
    @tasks = Task.all
    @task.destroy
    render('lists/tasks/tasks.html.erb')
  end

  def edit
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    @lists = List.all
    @tasks = Task.all
    render('lists/tasks/edit.html.erb')
  end

  def update
    @list = List.find(params[:list_id])
    @task = Task.find(params[:id])
    @lists = List.all
    @tasks = Task.all
    @task.update(:name => params[:name])
    render('lists/tasks/tasks.html.erb')
  end

end


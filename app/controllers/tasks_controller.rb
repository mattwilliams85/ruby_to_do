class TasksController < ApplicationController

  def new
    @list = List.find(params[:id])
    @lists = List.all
    @task = Task.new
    @tasks = Task.all
    render('lists/tasks/tasks.html.erb')
  end

end

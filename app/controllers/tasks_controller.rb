class TasksController < ApplicationController
  def all
    @tasks = Task.all
  end

  def id
    @tasks = Task.all
    @task = @tasks.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to all_path(@task)
  end

  def task_params
    params.require(:task).permit(:title, :details)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to task_path(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to all_path, status: :see_other
  end

end

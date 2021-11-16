class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new # needed to instantiate the form_for
  end

  def create
    @task = Task.new(params[:task])
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end
end

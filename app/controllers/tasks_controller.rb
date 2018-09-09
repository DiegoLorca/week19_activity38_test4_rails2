class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
  end

  def done
    @confirm = helpers.donetask(Task.find(params[:id]))
    if @confirm.nil?
      @event = Event.new
      @event.user_id = current_user.id
      @event.task_id = params[:id]
      @event.completed = true
      @event.save
    else
      @confirm.completed = !@confirm.completed
      @confirm.save
    end
      redirect_to tasks_path, notice: 'Tarea completa'
  end

  def show
    @tasks = Task.find(params[:id])
  end
end

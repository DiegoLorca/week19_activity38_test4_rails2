class EventsController < ApplicationController
  before_action :authenticate_user!
  def create
    @task = Task.find(params[:task_id])
    @event = Event.new(task: @event, user: current_user)
    if @event.save
      redirect_to tasks_path, notice: 'La tarea ha sido ingresada'
    else
      redirect_to tasks_path, alert: 'La tarea no ha sido ingresada'
    end
  end

  def index
    @events = current_user.events
  end
end

module TasksHelper
  def donetask(task)
    Event.find_by(['user_id = ? and task_id = ?', current_user.id, task.id])
  end
end

class API::V1::TasksController < ApplicationController
	def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task, status: 201
    else
      render json: {error: @task.errors.full_messages}, status: 500
    end
  end


  def show
    @task = Task.find(params[:id])
    render json: @task, status: :ok
  end


  def update

    @task = Task.find(params[:id])
    @task.update(task_params)
    if @task.save
      render json: @task
    else
      render json: {error: @task.errors.full_messages}
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: {message:"Task Deleted"}
  end



  private

  def task_params
    params.require(:task).permit(:title, :description, :status, :due_date, :priority_level, :list_id, upload_ids: [])
  end

end

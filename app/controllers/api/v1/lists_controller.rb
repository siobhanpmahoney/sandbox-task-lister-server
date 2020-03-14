class API::V1::ListsController < ApplicationController
		def index
    @lists = List.all
    render json: @lists
  end

  def create
    @list = List.new(list_params)
    if @list.save
      render json: @list, status: 201
    else
      render json: {error: @list.errors.full_messages}, status: 500
    end
  end


  def show
    @list = List.find(params[:id])
    render json: @list, status: :ok
  end


  def update

    @list = List.find(params[:id])
    @list.update(list_params)
    if @list.save
      render json: @list
    else
      render json: {error: @list.errors.full_messages}
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    render json: {message:"List Deleted"}
  end



  private

  def list_params
    params.require(:list).permit(:title, :user_id, task_ids: [], download_ids: [], email_ids: [])
  end
end

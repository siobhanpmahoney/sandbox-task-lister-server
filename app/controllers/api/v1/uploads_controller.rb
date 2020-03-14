class API::V1::UploadsController < ApplicationController
	def index
    @uploads = Upload.all
    render json: @uploads
  end

  def create
    @upload = Upload.new(upload_params)
    if @upload.save
      render json: @upload, status: 201
    else
      render json: {error: @upload.errors.full_messages}, status: 500
    end
  end


  def show
    @upload = Upload.find(params[:id])
    render json: @upload, status: :ok
  end


  def update

    @upload = Upload.find(params[:id])
    @upload.update(upload_params)
    if @upload.save
      render json: @upload
    else
      render json: {error: @upload.errors.full_messages}
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    render json: {message:"Upload Deleted"}
  end



  private

  def upload_params
    params.require(:upload).permit(:title, :file_format, :task_id)
  end
end

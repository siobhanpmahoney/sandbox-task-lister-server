class API::V1::DownloadsController < ApplicationController
	def index
    @downloads = Download.all
    render json: @downloads
  end

  def create
    @download = Download.new(download_params)
    if @download.save
      render json: @download, status: 201
    else
      render json: {error: @download.errors.full_messages}, status: 500
    end
  end


  def show
    @download = Download.find(params[:id])
    render json: @download, status: :ok
  end


  def update

    @download = Download.find(params[:id])
    @download.update(download_params)
    if @download.save
      render json: @download
    else
      render json: {error: @download.errors.full_messages}
    end
  end

  def destroy
    @download = Download.find(params[:id])
    @download.destroy
    render json: {message:"Download Deleted"}
  end



  private

  def download_params
    params.require(:download).permit(:title, :description, :file_format, :list_id)
  end
end

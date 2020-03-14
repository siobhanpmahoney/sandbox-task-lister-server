class API::V1::EmailsController < ApplicationController
		def index
    @emails = Email.all
    render json: @emails
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      render json: @email, status: 201
    else
      render json: {error: @email.errors.full_messages}, status: 500
    end
  end


  def show
    @email = Email.find(params[:id])
    render json: @email, status: :ok
  end


  def update

    @email = Email.find(params[:id])
    @email.update(email_params)
    if @email.save
      render json: @email
    else
      render json: {error: @email.errors.full_messages}
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    render json: {message:"Email Deleted"}
  end



  private

  def email_params
    params.require(:email).permit(:subject, :recipient, :list_id)
  end
end

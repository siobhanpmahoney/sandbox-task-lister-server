class API::V1::UsersController < ApplicationController
		def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 201
    else
      render json: {error: @user.errors.full_messages}, status: 500
    end
  end


  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end


  def update

    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {error: @user.errors.full_messages}
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: {message:"User Deleted"}
  end



  private

		def user_params
			params.require(:user).permit(:username, :password, :password_confirmation,  :avatar, list_ids: [])
  end
end
class Api::UsersController < ApplicationController

  def create
    debugger
    @user = User.new(params[user_params])
    if @user.save
      login(@user)
      render 'api/user/show.json.builder'
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end


end

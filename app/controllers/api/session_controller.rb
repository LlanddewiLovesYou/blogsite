class Api::SessionController < ApplicationController

  def create
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]
    )
    if @user
      login(@user)
      render 'api/users/auth'
    else
      render json: ["Invalid Username or Password"], status: 401
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
      render json: {}
    else
      render json: ['Nobody is signed in! You should sign in!'], status: 404
    end
  end


end

class UserSessionsController < ApplicationController
skip_before_action :authenticate, only: [:new,:create]

  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:user_session][:username])
    if user && user.authenticate(params[:user_session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end

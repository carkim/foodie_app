class UserSessionsController < ApplicationController
require 'UsserSessionsHelper'

  def new
    @title = "Sign In"
  end

  def create
    user = User.authenticate(params[:session][:email], params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination"
      @title = "Sign In"
      render 'new'
    else
      sign_in user
      redirect_to user
    end

    # if login(params[:email], params[:password])
    #   redirect_back_or_to(restaurants_path, notice: 'Logged in successfully.')
    # else
    #   flash.now.alert = "Login failed."
    #   render 'new'
    # end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end

class UserSessionsController < ApplicationController
#skip_before_action :login_required, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password]) user_session[:user_id] = user.id
      redirect_to root_path, :notice => "Welcome back, #{user.email}"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def login(user)
    session[:user_id] = nil
  end
end
  # def new
  #   @title = "Sign In"
  # end
  #
  # def create
  #   if login(params[:email], params[:password])
  #     redirect_to(restaurants_path, flash.notice = 'Logged in successfully.')
  #   else
  #     flash.now.alert = "Login failed."
  #     render 'new'
  #   end
    # user = User.authenticate(params[:user][:email], params[:user][:password])
    # if user.nil?
    #   flash.now[:error] = "Invalid email/password combination"
    #   @title = "Sign In"
    #   render 'new'
    # else
    #   sign_in user
    #   redirect_to user
    # end
  end

  def destroy
    logout
    redirect_to(:users, flash.notice = 'Logged out!')
  end

end

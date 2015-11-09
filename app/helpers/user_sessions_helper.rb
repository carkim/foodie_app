module UserSessionsHelper

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this section of the site"
      redirect_to login_path
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = @current_user || User.find_by(id: session[:user_id])
    # if @current_user.nil?
    # @current_user = User.find_by(id: session[:user_id])
    # else
    #   @current_user
    # end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete :user_id
    @current_user = nil
  end

end

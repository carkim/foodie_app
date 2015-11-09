class UsersController < ApplicationController
  #before_filter :require_login, except: [:new, :create, :index]
  # before_filter :zero_authors_or_authenticated, only: [:new, :create]
  #
  # def zero_authors_or_authenticated
  #   unless User.count == 0 || current_user
  #     redirect_to root_path
  #     return false
  #   end
  # end

  def index
    @users = User.all
  end

  def show
    @user = User.find params[:id]
  end

  def new
    @user = User.new
    @title = "Sign Up"
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to @user
    else
      @title = "Sign Up"
      render new_user_path
    end
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end

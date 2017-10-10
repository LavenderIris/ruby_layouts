class UsersController < ApplicationController
  def index
    @users = User.all
    render 'users/index.html.erb'
  end

  def new
    user = User.new(user_params)
    flash[:errors] = user.errors
    user.save
    redirect_to '/users/index'
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :favorite_language)
   end
end

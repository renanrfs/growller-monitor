class UsersController < ApplicationController
  skip_before_filter :require_login
  
  def register
    @user = User.new
    render :layout => "empty"
  end
    
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Thanks for signing up. Please check your email!"
    else
      render "register", :layout => "empty"
    end
  end
  
  def user_params
    params.required(:user).permit(:email, :password, :password_confirmation)
  end
end

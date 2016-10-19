class SessionsController < ApplicationController
  skip_before_filter :require_login

  def index
    render :layout => "empty"
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      redirect_to root_url, :layout => "empty", :notice => "Invalid email or password!"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end

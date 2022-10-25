class UserSessionsController < ApplicationController
 include UserSessionsHelper 
  def new
  end
  def create
    user = User.find_by(email: params[:users][:email].downcase)
    if user && user.authenticate(params[:users][:password])
      log_in(user)
      flash[:notice]="ログインしました。"
      redirect_to("/posts/index")
    else
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id]= nil
    flash[:notice]="ログアウトしました"
    redirect_to("/login")
  end
end

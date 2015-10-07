class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.confirm(params[:user])
    if @user
      login(@user)
      redirect_to "/users/#{@user.id}"
    else
      flash[:danger] = "It failed!"
      redirect_to "/sessions/new"
    end
  end

  def destroy
    # logout
    session[:user_id] = nil
    redirect_to root_path
  end
end

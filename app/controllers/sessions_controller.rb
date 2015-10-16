class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
    @user = User.confirm(params)
    if @user
      login(@user)
      redirect_to user_path(@user.id)
    else
      flash[:danger] = "It failed!"
      redirect_to sessions_new_path
    end
  end

  def destroy
    # logout
    session[:user_id] = nil
    redirect_to root_path
  end

  #################################################

private

  def performer_params
    params.require(:performer).permit(:email, :password)
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end


end

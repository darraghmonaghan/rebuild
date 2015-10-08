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



# def create
#    user = User.find_by_email(params[:email])
#    if user.authenticate(params[:password])
#      # login user
#      session[:user_id] = user.id
#      # go to profile page
#      redirect_to user_path(user)
#    else
#      # handle error
#      redirect_to sessions_new_path
#    end
#  end

  def destroy
    # logout
    session[:user_id] = nil
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:email, :password)  
  end


end

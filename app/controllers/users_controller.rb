class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

def show
  id = params[:id]
  @user = User.find(params[:id])
  render :show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to("/users/#{@user.id}")
    else
      flash[:danger] = "It failed!"
      render 'new'
    end
  end



  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
      user_id = params[:id]
      user = User.find(user_id)
      # get updated data
      updated_attributes = params.require(:user).permit(:first_name, :last_name)
      # update the client
      user.update_attributes(updated_attributes)
      user.save(validate: false)
      #redirect to show
      redirect_to "/users/#{user.id}"  # <-- go to show
    end

 def destroy
  end

  
end
private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
end

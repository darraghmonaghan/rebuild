class UsersController < ApplicationController

  def index
      @users = User.all
      render :index
  end

  def show
      id = params[:id]

      @user = User.find(params[:id])
      if current_user.id == @user.id
        render :show
      else
        redirect_to root_path
      end
  end

  def new
      @user = User.new
  end

  def create
      @user = User.create(user_params)
      if @user.performer && @user.save
          login(@user)
          redirect_to new_performer_path
      elsif @user.save
          login(@user)
          flash[:success] = "Welcome!"
          redirect_to("/users/#{@user.id}")
      else
          flash[:danger] = "It failed!"
          render 'new'
      end
  end


  def edit
      @user = User.find(params[:id])
    if @user.id == current_user.id
        render :edit
    else
      redirect_to root_path
    end
  end

  def update
      user_id = params[:id]
      user = User.find(user_id)
      # get updated data
      updated_attributes = params.require(:user).permit(:first_name, :last_name, :email, :password, :avatar)

      # update the client_
      user.update_attributes(updated_attributes)
      user.save(validate: false)
      #redirect to show
      redirect_to "/users/#{user.id}"  # <-- go to show
    end

  def destroy
    id = params[:id]
    user = User.find(id)
    user.destroy
    redirect_to root_path
  end

  def about
    render :about
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :performer, :avatar)  
  end


end

class PerformersController < ApplicationController
  def index
    @performers = Performer.all
  end

  def new
    @performer = Performer.new
  end

  def create
    # @performer = current_user.performer.new(performer_params)
    @performer = Performer.new(performer_params)
    @performer.user_id = current_user.id
    # @user = current_user.performer_id << @performer.id
      if @performer.save
        flash[:success] = "Welcome!"
        redirect_to("/performers/#{@performer.id}")
      else
        flash[:danger] = "It failed!"
        render 'new'
      end
  end

  # def show
  #   # need to connect user's performer_id and the performer id fields
  #   @performer = Performer.find_by_id(params[:id]) #this line should be finding the performer by the performer id

  #   category_id = @performer.category_id #should be finding the performer's category id
  #   @category = Category.find_by_id(category_id) #should be querying the cat. database using category_id

  #   @user = User.find_by_id(@performer.user_id) #should be finding the user id by the performer_id
  #   @video1 = @performer.video1 #finding the first video for the performer
  # end


  def show
    puts "PARAMS" , params.inspect
    @performer_id = params[:id]
    # puts "PERF ID: ", @performer_id
    @performer = Performer.find(@performer_id)
    # puts "PERF OBJECT: ", @performer.inspect
    # @user_id = @performer.user_id
    # puts "USER ID: ", @user_id
    # @user = User.find(@user_id)
    # puts "USER OBJECT: ", @user.inspect

    #@performers = Performer.where(user_id: user_found.user_id)
    #@performer = @user_found.performers.collect(&:id)

    # #@performer = Performer.find_by_id(@performer_id)

    # @user = User.find_by_id(@performer.user_id) #should be finding the user id by the performer_id
    # binding.pry
    # @video1 = @performer.video1 #finding the first video for the performer

  end






  def edit
    @performer = Performer.find(params[:id])
        if current_user.id  == @performer.user_id
            render :edit
        else
            redirect_to root_path
        end
    end

  def update
      @performer = Performer.find(params[:id])    
          if @performer.update(performer_params)
            redirect_to performer_path(@performer)
          else
            render :edit
          end
    end

  def destroy
    if current_user.id  == @performer.user_id
      id = params[:id]
      performer = Performer.find(id)
      performer.destroy  
    else
      redirect_to root_path
  end

  end

  private

  def performer_params
    params.require(:performer).permit(:user_id, :performer_name, :performer_email, :city, :category_id, :subcategory, :hourly_rate, :description, :perfavatar, :image1, :image2, :image3, :video1, :video2, :video3)
  end
end

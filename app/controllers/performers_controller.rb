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

  def show
    # need to connect user's performer_id and the performer id fields
    @performer = Performer.find_by_id(params[:id])
    @category = Category.find_by_id(@performer.category_id)
    @user = User.find_by_id(@performer.user_id)
    @video1 = @performer.video1

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
  end

  private

  def performer_params
    params.require(:performer).permit(:user_id, :performer_name, :performer_email, :city, :category_id, :subcategory, :hourly_rate, :description, :image1, :image2, :image3, :video1, :video2, :video3)
  end
end

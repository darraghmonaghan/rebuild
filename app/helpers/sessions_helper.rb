module SessionsHelper

	def login(user)
    session[:user_id] = user.id
    @current_user = user
  end

  def logged_in?
    if @current_user == nil
      redirect_to "/sessions/new"
    end
  end

  def signed_in?
    if current_user == nil
      return false
    else
      return true
    end
  end

  def destroy
    @current_user = session[:user_id] = nil
  end

  # def correct_user(performer)
  #   if current_user.id == @performer.user_id
  #     return true 
  #   else 
  #     return false
  #   end
  # end

  private
  def current_user 
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_performer_id
    Performer.where(user_id: current_user.id)
    
    
  end

end

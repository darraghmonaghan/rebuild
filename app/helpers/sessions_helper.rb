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

  def destroy
    @current_user = session[:user_id] = nil
  end

  def correct_user(performer)
		# TODO: please remove console logging - JC
		puts "PERFORMER: " , @performer.inspect
		# TODO: please remove commented out code from deployment version - JC
    # if current_user.id == @performer.user_id
    #   return true
    # else
    #   return false
    # end
  end

	# TODO: create a function that returns
	# Performer.where(user_id: current_user.id).first.id
	# or facilitates the return of above result so that
	# the database is NOT shown or called from the view.
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_performer_id
    Performer.where(user_id: current_user.id)
  end

end

class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      # If the user exists AND the password entered is correct.
      if user && user.authenticate(params[:password])
        # Save the user id inside the browser cookie. This is how we keep the user
        # logged in when they navigate around our website.
        # success logic, log them in
        session[:user_id] = user.id
        redirect_to '/'
      else
        # If user's login doesn't work, send them back to the login form.
        # failure, render login form
         redirect_to '/login'
      end
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end

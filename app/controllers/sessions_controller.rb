class SessionsController < ApplicationController
  def create
  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to "/users/#{user.id}/home"
  	else
  		flash[:errors] = "Not a valid email/password combination"
  		redirect_to action: 'create'
  	end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to "/"
  end
end

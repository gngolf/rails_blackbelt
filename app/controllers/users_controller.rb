class UsersController < ApplicationController
  def index
  end

  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to "/users/#{@user.id}/home"
  	else
  		redirect_to :back
  	end
  end

  def home
  	@user = User.find(params[:id])
  	@songs = Song.all
  end

  def show
  	@user = User.find(session[:user_id])
  	@mySongs = Song.where(id: Add.where(user_id: session[:user_id]))
  end


   private
  	def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  	end
end

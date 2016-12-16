class SongsController < ApplicationController
  def show
  	@song = Song.find(params[:id])
  end
  def new
  	@song = Song.new
  end
  def create
  	@song = User.find(session[:user_id]).songs.new(song_params)
  	@song.save
  	redirect_to :back
  end
  def add
  	@add = Add.new(user_id: session[:user_id], song_id: params[:id])
  	@add.save
  	redirect_to "/users/#{session[:user_id]}"
  end

  private
  def song_params
  	params.require(:song).permit(:title, :artist)
  	
  end
end

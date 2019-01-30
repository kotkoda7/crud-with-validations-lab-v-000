class SongsController < ApplicationController
  
  def index
    @songs = Song.all
  end
  
   def show
    @song = Song.find(params[:id])
  end
  
   def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end
  
   def edit
    @song = Song.find(params[:id])
  end
  
  def update
    @song = Song.find(params[:id])
    if @song.update(song_params)
<<<<<<< HEAD
      redirect_to @song
=======
      redirect_to song_path(@song)
>>>>>>> cfb732baa60fcd8aac929defa93fd6af76820150
    else
      render :edit
    end
  end
  
<<<<<<< HEAD
  def destroy 
    Song.find(params[:id]).destroy
    redirect_to songs_url
=======
  def  destroy 
    Song.find(params[:id]).destroy
    redirect_to song_path
>>>>>>> cfb732baa60fcd8aac929defa93fd6af76820150
  end
  
  private
  
  def song_params
    params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
  end
  
end


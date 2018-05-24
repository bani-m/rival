class SongsController < ApplicationController
  def index
   @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    Song.create(songs_params)
    redirect_to songs_path
  end

  private
    def songs_params
      params.require(:song).permit(:title, :content)
    end

end

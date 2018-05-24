class ComichaikusController < ApplicationController
  def index
   @comichaikus = Comichaiku.all
  end

  def new
    @comichaiku = Comichaiku.new
  end

  def create
    Comichaiku.create(comichaikus_params)
    redirect_to comichaikus_path
  end

  def confirm
    @comichaiku = Comichaiku.new(comichaikus_params)
  end

  private
    def comichaikus_params
      params.require(:comichaiku).permit(:title, :content)
    end

end

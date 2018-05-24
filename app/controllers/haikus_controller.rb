class HaikusController < ApplicationController
  def index
   @haikus = Haiku.all
  end

  def new
    @haiku = Haiku.new
  end

  def create
    Haiku.create(haikus_params)
    redirect_to haikus_path
  end

  def confirm
    @haiku = Haiku.new(haikus_params)
  end

  private
    def haikus_params
      params.require(:haiku).permit(:title, :content)
    end

end

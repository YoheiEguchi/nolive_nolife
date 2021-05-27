class ArtistsController < ApplicationController

  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.destroy
    redirect_to root_path
  end
  
  private

  def artist_params
    params.require(:artist).permit(:name).merge(user_id: current_user.id)
  end
end


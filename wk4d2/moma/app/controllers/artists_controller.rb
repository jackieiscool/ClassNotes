class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(params[:artist])
    render :show #@artist
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      render :show
    else
      render :edit 
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to('/artists')
  end
end

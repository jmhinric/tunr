class ArtistsController < ApplicationController

  self.before_action :load_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def show
    @songs = @artist.songs.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to "/artists"
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to "/artists"
  end


  private

    def load_artist
      return @artist = Artist.find(params[:id])
    end

    def artist_params
      params.require(:artist).permit(:id, :name, :genre, :photo_url)
      # return {
      #   name: params[:name],
      #   genre: params[:genre],
      #   photo_url: params[:photo_url]
      # }
    end

end
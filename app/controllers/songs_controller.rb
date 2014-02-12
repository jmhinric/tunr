class SongsController < ApplicationController
  self.before_action :load_artist, only: [:new, :create, :edit, :update, :destroy]
  self.before_action :load_song, only: [:edit, :update, :destroy]


  def new
    @song = Song.new
  end

  def create
    @song = @artist.songs.create(song_params)
    if @song.valid?
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @song= @artist.songs.update(song_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @song.destroy
    redirect_to artist_path(@artist)
  end


  private

    def load_artist
      return @artist = Artist.find(params[:artist_id])
    end

    def load_song
      return @song = @artist.songs.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :year)

      # return {
      #   title: params[:title],
      #   year: params[:year],
      #   artist_id: params[:artist_id]
      # }
    end

end
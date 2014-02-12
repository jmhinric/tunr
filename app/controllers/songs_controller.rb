class SongsController < ApplicationController
  self.before_action :load_artist, only: [:new, :create, :edit, :update, :destroy]
  self.before_action :load_song, only: [:edit, :update, :destroy]


  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    # binding.pry
    if @song.valid?
      redirect_to artist_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @song.update(song_params)
    redirect_to "/artists/#{@artist.id}"
  end

  def destroy
    @song.destroy
    redirect_to "/artists/#{@artist.id}"
  end


  private

    def load_artist
      return @artist = Artist.find(params[:artist_id])
    end

    def load_song
      return @song = @artist.songs.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:id, :title, :year)

      # return {
      #   title: params[:title],
      #   year: params[:year],
      #   artist_id: params[:artist_id]
      # }
    end

end
class SongsController < ApplicationController
  def index
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    @song.save

    redirect_to song_path(@song)
  end

  def edit
  end

  def update
  end
end

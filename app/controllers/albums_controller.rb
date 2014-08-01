class AlbumsController < ApplicationController

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def new
    @album = Album.new
    render :new
  end

  def update

  end

  def edit

  end

  def show
    fail
    @album = Album.find(params[:id])
    render :show
  end

  def index
    @albums = Album.where(band_id: 1).includes(:band)
    render :index
  end

  def destroy

  end



  private
  def album_params
    params.require(:album).permit(:name, :band_id)
  end

end

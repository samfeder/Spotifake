class AlbumsController < ApplicationController

  def create
    @album = Album.new(album_params)
    @album.band_id = params[:band_id]
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
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to album_url(@album)
    else
      render :edit
    end
  end

  def edit
    @album = Album.find(params[:id])
    render :edit
  end

  def show
    @album = Album.find(params[:id])
    render :show
  end

  def index
    @albums = Album.where(band_id: 1).includes(:band)
    render :index
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy!
    redirect_to band_url(@album.band)
  end



  private
  def album_params
    params.require(:album).permit(:name, :band_id)
  end

end

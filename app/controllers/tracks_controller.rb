class TracksController < ApplicationController

  def create
    @track = Track.new(track_params)
    @track.album_id = params[:album_id]
    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def new
    @track = Track.new(album_id: params[:album_id])
    render :new
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to track_url(@track)
    else
      render :edit
    end
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def show
    @track = Track.find_by(id: params[:id])
    render :show
  end

  def index

  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @track.destroy!
    redirect_to band_url(@track.band)
  end

  def track_params
    params.require(:track).permit(:title, :album_id, :lyrics, :bonus_status)
  end
end

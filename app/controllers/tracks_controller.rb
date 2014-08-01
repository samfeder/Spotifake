class TracksController < ApplicationController

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def new
    @track = Track.new
    render :new
  end

  def update

  end

  def edit

  end

  def show
    fail
    @tracks = Track.where(album_id = :album_id).include(:album)
    render :show
  end

  def index

  end

  def destroy

  end

end

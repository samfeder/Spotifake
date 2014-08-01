class Album < ActiveRecord::Base

  ALBUM_STYLES = %w(studio live)

  belongs_to :band
  has_many :tracks


  after_initialize :assign_default_style

  validates :name, :band_id, :style, presence: true
  validates :style, inclusion: ALBUM_STYLES

  private
  def assign_default_style
    self.style ||= "studio"
  end


end

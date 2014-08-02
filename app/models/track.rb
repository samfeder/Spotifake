class Track < ActiveRecord::Base

  BONUS_STATUSES = %w(bonus regular)

  belongs_to :album

  has_one(:band, through: :album, source: :band)

  after_initialize :assign_default_bonus_status

  validate :album_id, :bonus_status, :title, presence: true

  private
  def assign_default_bonus_status
    self.bonus_status ||= "regular"
  end


end

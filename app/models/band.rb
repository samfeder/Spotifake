class Band < ActiveRecord::Base

  has_many :albums
  has_many :tracks

  validates :name, presence: true
  validates :name, uniqueness: true



end

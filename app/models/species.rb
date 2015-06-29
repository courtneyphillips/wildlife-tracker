class Species < ActiveRecord::Base
  has_many :sightings
  belongs_to :type
  validates :name, :presence => true
  validates :description, :presence => true
end

class Type < ActiveRecord::Base
  has_many :species
  validates :name, :presence => true
end

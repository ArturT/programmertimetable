class Developer < ActiveRecord::Base
  attr_accessible :name, :surname, :position
  validates :name, :presence => true
  validates :surname, :presence => true
  validates :position, :presence => true
end

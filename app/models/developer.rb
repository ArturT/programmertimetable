class Developer < ActiveRecord::Base
  has_many :schedules
  has_many :projects, :through => :schedule
  attr_accessible :name, :surname, :position
  validates :name, :presence => true
  validates :surname, :presence => true
  validates :position, :presence => true
end

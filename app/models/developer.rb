class Developer < ActiveRecord::Base
   has_many :schedule
   attr_accessible :name, :surname, :position
  validates :name, :presence => true
  validates :surname, :presence => true
  validates :position, :presence => true
end

class Schedule < ActiveRecord::Base
  attr_accessible :start_date, :end_date
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :developer_id, :presence => true
  validates :project_id, :presence => true
end

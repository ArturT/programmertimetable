class Schedule < ActiveRecord::Base
  belongs_to :developer
  belongs_to :project

  attr_accessible :start_date, :end_date, :developer_id
  validates :start_date, :presence => true
  validates :end_date, :presence => true
  validates :developer_id, :presence => true
  validates :project_id, :presence => true
  validate :valid_dates?

  def valid_dates?
    if start_date > end_date
      errors.add(:start_date, "is greater than end date")
    end
  end
end

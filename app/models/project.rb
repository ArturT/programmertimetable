class Project < ActiveRecord::Base
   has_and_belongs_to_many :programmers
   attr_accessible :end_date, :name, :start_date, :programmer_ids
end

class Programmer < ActiveRecord::Base
   has_and_belongs_to_many :projects
   attr_accessible :name, :position, :project_ids
end
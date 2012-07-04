class Schedule < ActiveRecord::Base
   belongs_to :developer
   belongs_to :project

   attr_accessible :start_date, :end_date, :developer_id
   validates :start_date, :presence => true
   validates :end_date, :presence => true
   validates :developer_id, :presence => true
   validates :project_id, :presence => true

   def project_name
      Project.find(self.project_id).name
   end
   
   def developer_name
      Developer.find(self.developer_id).name
   end
end

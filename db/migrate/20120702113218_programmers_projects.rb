class ProgrammersProjects < ActiveRecord::Migration
  def self.up
     create_table :programmers_projects, :id=> false  do |t|
        t.integer :programmer_id
        t.integer :project_id
     end
  end

  def self.down
     drop_table :programmers_projects
  end
end

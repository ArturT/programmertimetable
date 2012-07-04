class CreateDeveloperProjects < ActiveRecord::Migration
  def up
    create_table :developer_projects do |t|
      t.integer :developer_id
      t.integer :project_id
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
  def down
    drop_table :developer_projects
  end
end

class CreateSchedules < ActiveRecord::Migration
  def change
    rename_table :developer_projects, :schedules
  end
end
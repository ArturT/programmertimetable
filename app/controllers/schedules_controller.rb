class SchedulesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @schedule = Schedule.new
    @schedule.project_id = @project.id
    @developers = Developer.all
  end


end
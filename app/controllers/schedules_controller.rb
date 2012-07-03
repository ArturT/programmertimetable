class SchedulesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @schedule = Schedule.new
    @schedule.project_id = @project.id
    @developers = Developer.all
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    @schedule.project_id = params[:project_id]

    if @schedule.save
      redirect_to projects_path
    else
      render :new
    end
  end
end
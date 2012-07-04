class SchedulesController < ApplicationController
  before_filter :load_projects_and_developers, :only => [:new, :create, :edit, :update]

  def new
    @schedule = Schedule.new
    @schedule.project_id = @project.id
    @url = project_schedules_path(@project.id)
  end

  def create
    @schedule = Schedule.new(params[:schedule])
    @schedule.project_id = params[:project_id]

    if @schedule.save
      redirect_to projects_path
    else
      @url = new_project_schedule_path()
      render :new
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
    @url = project_schedule_path()
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update_attributes(params[:schedule])
      redirect_to project_path
    else
      @url = project_schedule_path()
      render :edit
    end
  end

  private
  def load_projects_and_developers
    @project = Project.find(params[:project_id])
    @developers = Developer.all
  end
end
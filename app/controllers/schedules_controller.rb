class SchedulesController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @schedule = Schedule.new
    @schedule.project_id = @project.id
    @developers = Developer.all
    @url = project_schedules_path(@project.id)
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

   def edit
      @project = Project.find(params[:project_id])
      @schedule = Schedule.find(params[:id])
      @developers = Developer.all
      @url = project_schedule_path()
   end

   def update
      @schedule = Schedule.find(params[:id])

      if @schedule.update_attributes(params[:schedule])
         redirect_to project_path
      else
         render :edit
      end
   end
end
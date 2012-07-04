class BoardsController < ApplicationController
  def index
    @date = params[:date] ? params[:date].to_date : Date.today

    @dates = @date.beginning_of_month..@date.end_of_month
    @devs = Developer.includes(:schedules => [:project]).all
    #@devs = Developer.all(:joins => :schedule)
  end

  #def next
  #   @current = params[:date]
  #   render :index
  #end
end
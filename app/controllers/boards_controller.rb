class BoardsController < ApplicationController
  def index
     @dates = Date.today.beginning_of_month..Date.today.end_of_month
     @current = Date.today
     @devs = Developer.all
  end

   #def next
   #   @current = params[:date]
   #   render :index
   #end
end
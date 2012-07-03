class DevelopersController < ApplicationController
  def index
    @devs = Developer.all
  end

  def new
    @developer = Developer.new
  end

  def create
    @developer = Developer.new(params[:developer])
    if @developer.save
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def edit
    @developer = Developer.find(params[:id])
  end

  def show
    @developer = Developer.find(params[:id])
  end

  def update
    @developer = Developer.find(params[:id])
    if @developer.update_attributes(params[:developer])
      redirect_to  action: "show"
    else
      redirect_to action: "edit"
    end 
  end
end

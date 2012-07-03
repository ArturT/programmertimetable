class BoardsController < ApplicationController

  def index
    @devs = Developer.all
  end

end
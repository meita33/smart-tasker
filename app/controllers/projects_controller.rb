class ProjectsController < ApplicationController
  def index
    @projects = Project.includes(:user)
  end

  def new
    @projects = Project.includes(:user)
  end

  def show
  end
end

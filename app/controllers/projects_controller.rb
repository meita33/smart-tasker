class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.includes(:user)
  end



  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @projects = Project.includes(:user)
  end

  def edit
  end

  def update
    if @project.update(project_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @project.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  private

  def project_params
    params.require(:project).permit(:project_title, :project_detail, :start_date, :end_date, :section_id).merge(user_id: current_user.id)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end


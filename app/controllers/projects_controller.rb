class ProjectsController < ApplicationController
  def index
    @projects = Project.last_created_projects(10)
  end

  def show
    @project = Project.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      render "no_projects_found"
  end

  def new
    @project = Project.new
  end

  def create
    new_project = params[:project]
    name = new_project[:name]
    description = new_project[:description]

    p = Project.new(name: name, description: description)
    p.save

    redirect_to '/projects'
  end
end

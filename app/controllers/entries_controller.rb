class EntriesController < ApplicationController

  def index
    @project = Project.find(params[:project_id])
    @entries = @project.entries
  end
  def new
  	@project = Project.find(params[:project_id])
  	@entry = @project.entries.new
  end
  def create
  	@project = Project.find(params[:project_id])
  	@entry = @project.entries.new(entry_params)
  	@entry.save

  	redirect_to "/projects/#{@project.id}/entries"
  end
  private
  def entry_params
  	params.require(:entry).permit(:hours, :minutes, :date)
  end

end

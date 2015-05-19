class ProjectsController < ApplicationController

	before_filter :find_project , :only => [:edit, :show, :update, :destroy]
	def index
		@projects = Project.all
	end

	def index
		@projects = Project.all
	end

	def new
		@project = Project.new
	end

	def create
		# @project = Project.new(params[:project])
		
		if @project.save!
			redirect_to projects_path
		else
			redirect_to :back
		end
	end

	def show
		# @project = Project.find(params[:id])
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		# @project = Project.find(params[:id])
		@project.update_attributes(params[:project])

		if @project.save!
			redirect_to projects_path
		else
			redirect_to :back
		end
	end

	def destroy
		# Project.find(params[:id]).destroy
		@projects.destroy

		redirect_to projects_path
	end

	def top_hits
		@projects = Project.top_projects
	end

	def find_project
		@project = Project.find(params[:id])
	end

end

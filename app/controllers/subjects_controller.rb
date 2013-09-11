class SubjectsController < ApplicationController

	def index
		@subjects = Subject.all
	end
	def show
		@subject = Subject.find(params[:id])
	end	
	def destroy
		@subject = Subject.find(params[:id])
		@subject.destroy

		redirect_to subject_path
	end

	def new
		@subject = Subject.new
	end

	def edit
		@subject = Subject.find(params[:id])
	end

	def update
		@subject = Subject.find(params[:id])
		@subject.update_attributes(params[:subject])
		if @subject.save
			redirect_to subjects_path(params[:id])
		else
			redirect_to :back, notice: "Error"
			end
	end

	def create
		@subject = Subject.new(params[:subject])
		
		if @subject.save
			redirect_to subject_path(params[:id])
		else
			render :new
		end
	end
end
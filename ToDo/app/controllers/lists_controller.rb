class ListsController < ApplicationController

	def index
		@lists = List.all
	end

	def show
		@list = List.find(params[:id])
	end

	def new
		@list = List.new
	end

	def create
		if @list = List.create(params[:list])
			render :new
		end
	end

	def edit
		@list = List.find(params[:id])
	end

	def update
		@list = List.find(params[:id])
		@list.update_attributes(params)
	end

	def destroy
		@list = List.find(params[:id])
		@list.delete
	end
end
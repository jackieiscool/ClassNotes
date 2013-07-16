class ItemsController < ApplicationController

	def index
		@items = Items.all
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@list = List.find(params[:list_id])
		@item = @list.items.build(description: params[:description])
		if @item.save
			render :new
		end
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])
		@item.update_attributes(params)
	end

	def destroy
		@item = Item.find(params[:id])
		@item.delete
	end
end
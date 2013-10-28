class MoviesController < ApplicationController

	def index
		@query = params[:movie]
		request = Typhoeus::Request.get(
		"http://www.omdbapi.com", 
		:params => {:s => @query }
		)
		@search = JSON.parse(request.body)["Search"]
	
		if @search == nil
			render :error
		else
			render :index
		end

	end

	def show
		@query1 = params[:id]
		request = Typhoeus::Request.get(
		"http://www.omdbapi.com", 
		:params => {:i => @query1 }
		)
		@movie = JSON.parse(request.body)
	
		render :show

	end

	def create
		
	end

end

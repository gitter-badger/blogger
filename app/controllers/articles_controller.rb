class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end 

	def show
		@articles = Article.find(params[:id])
	end

	def new
		@articles = Article.new
	end 

	def create 
		@articles = Article.new
		@articles.title = params[:article][:title]
		@articles.save
		redirect_to article_path(@articles)
	end 
end

class ArticlesController < ApplicationController
	include ArticlesHelper
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
		@articles = Article.new(article_params)
			# title: params[:article][:title],
			# body: params[:article][:body])
			#another way to access the parameters 
			# @articles.title = params[:article][:title]
			# @articles.body = params[:article][:body])
		@articles.save
		redirect_to article_path(@articles)
	end 

	def update
		@articles = Article.find(params[:id])
		@articles.update(article_params) #.update method automatically saves changes

		flash.notice = "Article '#{@articles.title}' Updated!"

		redirect_to article_path(@articles)
	end 

	def destroy
		@articles = Article.find(params[:id])
		@articles.destroy
		redirect_to action: "index"
	end 

	def edit
		@articles = Article.find(params[:id])
	end 
end

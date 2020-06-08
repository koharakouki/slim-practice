class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end


	def create
		@article = Article.new(article_params)
		@article.user_id = current_user.id
		@article.save
		redirect_to articles_url
	end


	def index
		@articles = Article.all
	end


	def show
		@article = Article.find(params[:id])
	end


	def edit
		@article = Article.find(params[:id])
	end


	def update
		@article = Article.find(params[:id])
		@article.update
		redirect_to @article
	end


	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_url
	end

	private

	def article_params
		params.require(:article).permit(:article_title, :content)
	end

end

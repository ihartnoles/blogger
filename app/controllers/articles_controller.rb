class ArticlesController < ApplicationController
  
  before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  	@comment = Comment.new
  	@comment.article_id = @article.id
  end

  def new
  	@heading = 'Create a New Article'
  	@article = Article.new
  end

  def create
  	#raise params.inspect
  	@article = Article.new(params[:article])
  	@article.save

  	flash.notice = "Article '#{@article.title}' created!"

  	redirect_to article_path(@article)
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy()

  	flash.notice = "Article '#{@article.title}' deleted!"

  	redirect_to article_path(@article)
  end
  
  def edit
  	@heading = 'Edit an Article'
  	@article = Article.find(params[:id])
  end

  def update
  	@article = Article.find(params[:id])
  	@article.update_attributes(params[:article])

  	flash.notice = "Article '#{@article.title}' updated!"

  	redirect_to article_path(@article)
  end
end

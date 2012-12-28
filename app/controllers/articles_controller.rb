class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def show
  	@article = Article.find(params[:id])
  end

  def new
  	@heading = 'Create a New Article'
  	@article = Article.new
  end

  def create
  	#raise params.inspect
  	@article = Article.new(params[:article])
  	@article.save
  	redirect_to article_path(@article)
  end

  def destroy
  	@article = Article.find(params[:id])
  	@article.destroy()
  	redirect_to article_path(@article)
  end
  
  def edit
  	@heading = 'Edit an Article'
  	@article = Article.find(params[:id])
  end

end

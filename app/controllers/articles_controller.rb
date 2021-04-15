class ArticlesController < ApplicationController
  before_action :logged_in?
  # before_action :set_article, only: %i[show edit update destroy]
  def index
    @articles = Article.all.ordered_by_most_recent
  end

  def new
    @article = current_user.articles.build
    @category_options = Category.all.map{ |c| [c.name, c.id] }
  end

  def create
    @article = current_user.articles.build(article_params)
    @category_options = Category.all.map{ |c| [c.name, c.id] }
    if @article.save
      # ArticleCategory.create!(article_id: @article.id, category_id: params[:category_id])
      flash[:notice] = "#{@article.title} has been created successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = current_user.articles.build(article_params)
    if @article.update
      flash[:notice] = "#{@article.title} has been updated successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end

  # def set_article    
  # end
end

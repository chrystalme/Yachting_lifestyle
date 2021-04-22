class ArticlesController < ApplicationController
  before_action :logged_in?, except: [:show]
  before_action :set_article, only: %i[show edit update destroy]
  def index
    @articles = Article.all.ordered_by_most_recent
  end

  def new
    @article = current_user.articles.build
    # @category_options = Category.all.map{ |c| [c.name, c.id] }
    @my_articles = Article.where('author_id = ?', current_user)
    @bookmarked_articles = Article.user_bookmarks(current_user)
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      # ArticleCategory.create!(article_id: @article.id, category_id: params[:category_id])
      flash[:notice] = "#{@article.title} has been created successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    @article = current_user.articles.build(article_params)
    if @article.update
      flash[:notice] = "#{@article.title} has been updated successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    return unless @article.destroy

    flash[:alert] = "#{@article.title} has been deleted successfully."
    redirect_to root_path
  end

  def bookmarks
    @bookmarked_articles = Article.user_bookmarks(current_user)
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end

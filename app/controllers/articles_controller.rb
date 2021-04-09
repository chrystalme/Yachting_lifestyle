class ArticlesController < ApplicationController
  before_action :logged_in?
  def index
    @articles = Article.all
  end

  def new
    @article = current_user.articles.build
    @category_options = Category.all.map{|c| [c.name, c.id] }
  end

  def create
    @article = current_user.articles.build(article_params)

    if @article.save
      flash[:notice] = "#{@article.title} has been created successfully."
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :text, :image)
  end
end
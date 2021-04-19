class BookmarksController < ApplicationController
  before_action :logged_in?

  def index; end

  def create
    @article = Article.find(params[:article_id])
    @bookmark = current_user.bookmark(@article)
    flash[:notice] = "#{@article.title} has been bookmarked."
    redirect_to request.referer
  end

  def destroy
    @article = Bookmark.find(params[:id]).article
    current_user.unbookmark(@article)
    flash[:alert] = "#{@article.title} has been unbookmarked."
    redirect_to request.referer
  end
end

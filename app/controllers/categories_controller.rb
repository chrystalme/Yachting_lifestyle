class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    name = 'TV'
    @category = Article.category(name)
  end
end

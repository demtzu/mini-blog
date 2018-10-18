class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(5)
    # @articles = Article.order(:name).page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  # def article_params
  #   params.require(:article).permit(:id, :title, :content)
  # end
end

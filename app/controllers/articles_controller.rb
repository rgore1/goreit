class ArticlesController < ApplicationController

  @article_path = @_at_path
  @new_article_path = 'articles/create'




    def create
      @article = Article.new(article_params)

      @article.save

      redirect_to action: 'show', id: @article.id
    end

    def new
    end

    def index
      @articles = Article.all
    end

    def show
      @article = Article.find(params[:id])
    end

    private
    def article_params
      params.require(:article).permit(:title, :text)
    end

  end


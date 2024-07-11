class ArticlesController < ApplicationController

    def index
      @articles = Article.all
    end
    
    def new
      @article = Article.new
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])

        if @article.update(article_params)
          redirect_to articles_path, notice: 'Article was successfully updated.'
        else
          render :edit
        end
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to articles_path, notice: 'Article was successfully created.'
        else
            render :new
        end
    end

    private
      def set_article
        @article = Article.find(params[:id])
      end
  
      def article_params
        params.require(:article).permit(:title, :category, :body)
      end

  end
  
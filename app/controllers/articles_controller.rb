class ArticlesController < ApplicationController

    def index
      @articles = Article.all
    end

    def show
    end

    def new
        @article = Article.new
    end

    def edit
    end

    def update
    end

    def create
        @article = Article.new
        @article.category = params[:category]
        @article.title = params[:title]
        @article.body = params[:body]

        if @article.save
            redirect_to article_path
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
  
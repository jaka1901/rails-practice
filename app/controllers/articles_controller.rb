class ArticlesController < ApplicationController
    def index
        @articles = Article.all
        respond_to :json
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(article_params)

        if @article.save
            redirect_to action: "index"
        else
            render :new, status: :unprocessable_enitity
        end
    end

    private
        def article_params
            params.require(:article).permit(:title, :content)
        end
end

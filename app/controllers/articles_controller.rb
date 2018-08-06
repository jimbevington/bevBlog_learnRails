class ArticlesController < ApplicationController

  http_basic_authenticate_with name: 'jim', password: 'd01ngLerdahlsbiddingBEVBLOG', except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      # RENDER here will pass @article to new route rather than posting a new request, as redirect_to would
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  # PRIVATE Methods must be declared LAST ...

  private
  # specifies params that can and must be handled
    def article_params
      params.require(:article).permit(:title, :text, :category)
    end

end

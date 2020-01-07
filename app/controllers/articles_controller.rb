class ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    puts params

  end
  
  

end

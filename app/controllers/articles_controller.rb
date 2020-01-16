class ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    @paragraphs = @article.paragraphs.all
    @paragraph = Paragraph.new

  end
  
  

end

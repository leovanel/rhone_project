class ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    @paragraphs = Paragraph.all
    @paragraph = Paragraph.new

  end
  
  

end

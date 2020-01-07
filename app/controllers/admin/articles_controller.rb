class Admin::ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    puts params

  end
  
  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end

class Admin::ArticlesController < ApplicationController
  def index

  end
  
  def show

    @article = Article.find(params[:id])
    puts params

  end
  
  def new
    puts params

  end

  def create

    
    @rubric= Rubric.find (params[:id])
    @user = User.find (current_user.id)

    @article = Article.new(title: "", body: "", user: @user, rubric: @rubric )
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to (admin_article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render new_admin_article_path
    end

  end

  def edit

    @article = Article.find(params[:id])
    

  end

  def update

    @article = Article.find(params[:id])
    
    @user = User.find (current_user.id)
    

   
    if @article.update(title:article_params[:title], body:article_params[:body])
      flash[:success] = 'Article successfully created'
      redirect_to (article_path(@article.id))
       
    else
      flash.now[:danger] = 'Something went wrong, please check your input'
      render :edit
    end

  end

  def destroy

  end

  private

  def article_params

    params.require(:article).permit(:title, :body)

  end


  

end

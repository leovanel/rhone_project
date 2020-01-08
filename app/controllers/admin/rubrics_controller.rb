class Admin::RubricsController < ApplicationController

  def index
    @rubrics = Rubric.all

  end
  
  def show

    @rubric = Rubric.find(params[:id])
    

  end
  
  def new

  end

  
  def create
   
    @rubric = Rubric.create(title: "", img_url: "")
    
    render :show
    
    

  end
  

  def edit

  end

  def update

  end

  def destroy

  end

end

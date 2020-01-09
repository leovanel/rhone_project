class RubricsController < ApplicationController

  def index
    @rubrics = Rubric.order(title: :desc).all

  end
  
  def show

    @rubric = Rubric.find(params[:id])
    

  end

  


end

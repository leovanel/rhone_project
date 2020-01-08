class RubricImagesController < ApplicationController
  def create
    @rubric = Rubric.find(params[:id])
    @rubric.rubric_image.attach(params[:rubric_image])
    redirect_to "/"
  end

end

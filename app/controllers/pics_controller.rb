class PicsController < ApplicationController
  def create
    pic = Pic.new(pic_params)
    pic.save
    redirect_to root_path
  end

  def pic_params
    params.require(:pic).permit(:title, :photo)
  end
end

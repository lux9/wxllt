class BackgroundsController < ApplicationController
  def create
    background = Background.new(background_params)
    if background.img.nil?
      background.img = Background.last.img if Background.last
    end
    background.save
    redirect_to root_path
  end

  def destroy_background
    Background.destroy_all
    redirect_to root_path
  end

  private
  def background_params
    params.require(:background).permit(:img, :photo)
  end

end

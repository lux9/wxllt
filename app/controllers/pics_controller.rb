class PicsController < ApplicationController
  def create
    pic = Pic.new(pic_params)
    pic.save
    # raise
    redirect_to root_path(errors: pic.errors.full_messages)
  end

  def destroy
    pic = Pic.find(params["id"])
    pic.destroy
    redirect_to root_path
  end

  def destroy_all_posts
    Pic.destroy_all
    redirect_to root_path
  end

  private

  def pic_params
    params.require(:pic).permit(:title, :comment, :photo)
  end
end

class PagesController < ApplicationController
  def home
    @title = "Hello world"
  end

  def process_pic
    raise
    params[:post][:file]
    redirect_to root_path
  end


  private

  def permited_params

  end

end

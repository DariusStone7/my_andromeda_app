class HomeController < ApplicationController
  def index
    @images = Image.all
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to root_path, notice: "Image upload sucessful!"
    else
      redirect_to root_path, alert: "Image upload error."
    end
  end

  private

  def image_params
    params.require(:image).permit(:file)
  end
end

class ImagesController < ApplicationController
  def index
    # @image = randomImage(Image.unsplash_response("computer, coffee, pens"))
    @image = Image.new
  end

  def create
    @image = Image.new
    @image.image_url = randomImage(Image.unsplash_response("computer, coffee, pens"))

    # if @entry.mood == "positive"
      @image.mood = "positive"
    # end

    if @image.save
      redirect_to root_url
    else
      render :index
    end
  end

  def randomImage(response)
    response["results"].sample["urls"]["regular"]
  end
end

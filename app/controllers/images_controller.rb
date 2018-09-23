class ImagesController < ApplicationController
  def index
    @image = randomImage(Image.unsplash_response("computer, coffee, pens"))
  end

  def randomImage(response)
    response["results"].sample["urls"]["regular"]
  end
end

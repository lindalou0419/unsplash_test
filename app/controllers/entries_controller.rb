class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.content = params[:entry][:content]
    @entry.mood = Entry.sentiment_response(@entry.content)
    @entry.image = Image.where(mood: @entry.mood).sample

    if @entry.save
      redirect_to root_url
    else
      render :new
    end
  end
end

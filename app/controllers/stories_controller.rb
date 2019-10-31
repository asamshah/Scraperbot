class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
  end

  def new
  end

  def edit
  end
end

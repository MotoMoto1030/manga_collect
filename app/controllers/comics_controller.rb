class ComicsController < ApplicationController
  def index
  end

  def new
    @comic = Comic.new
  end

  def create
  end
end

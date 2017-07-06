class SplashesController < ApplicationController
  def index
    @photos = Photo.all
    @favorite = Favorite.new
  end
end

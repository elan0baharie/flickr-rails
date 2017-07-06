class SplashesController < ApplicationController
  def index
    @favorites = Favorite.all
    @photos = Photo.all
    @favorite = Favorite.new
    @most_favs = Photo.select('photos.caption, photos.file, count(favorites.id) as favorites_count').joins(:favorites).order('favorites_count DESC')
  end
end

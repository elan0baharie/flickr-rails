class FavoritesController < ApplicationController

  def new
    @favorite = Favorite.new
    redirect_to '/'
  end
  
  def create
    id_for_join = params['favorite']['photo_id']
    @photo = Photo.find(id_for_join)
    @user = current_user
    @favorite = Favorite.new(:user_id => @user.id)
    @favorite.save
    @photo.favorites.push(@favorite)
      redirect_to user_path(@user)
  end
end

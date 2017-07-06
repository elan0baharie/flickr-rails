class TagsController < ApplicationController

  def index

  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @users = User.all
    @photo = Photo.find(params[:id])
  end

  def create
    id_for_join = params['tag']['photo_id']
    tag_text = params['tag']['text']
    @photo = Photo.find(id_for_join)

    if Tag.find_by text: tag_text
      @tag = Tag.find_by text: tag_text
    else
      @tag = Tag.new(:text => tag_text)
      @tag.save
    end
    if @photo.tags.include?(@tag)
      redirect_to user_photo_path(current_user, @photo)
    else
    @photo.tags.push(@tag)
    redirect_to user_photo_path(current_user, @photo)
  end
  end

  def edit
    @tag = Tag.find(params[:id])
    @photo = Photo.find(params[:photo_id])
    @photo.tags.delete(@tag)
    redirect_to user_photo_path(current_user, @photo)
  end

end

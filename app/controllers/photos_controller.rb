class PhotosController < ApplicationController

  def index
  end

  def show
    @tags = Tag.all
    @tag = Tag.new
    @users = User.all
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = current_user.photos.new
  end

  def create
    @photo = current_user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added!"
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    if @photo.update(photo_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to user_path(@user)
  end

  private
  def photo_params
    params.require(:photo).permit(:caption, :user_id, :file, :file_file_name, :file_content_type, :file_file_size, :file_updated_at)
  end

end

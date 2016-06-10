class UserCommentPhotosController < ApplicationController
  before_action :set_user_comment_photo, only: [:show, :edit, :update, :destroy]

  # GET /user_comment_photos
  # GET /user_comment_photos.json
  def index
    @user_comment_photos = UserCommentPhoto.all
  end

  # GET /user_comment_photos/1
  # GET /user_comment_photos/1.json
  def show
  end

  # GET /user_comment_photos/new
  def new
    @user_comment_photo = UserCommentPhoto.new
  end

  # GET /user_comment_photos/1/edit
  def edit
  end

  # POST /user_comment_photos
  # POST /user_comment_photos.json
  def create
    @user_comment_photo = UserCommentPhoto.new(user_comment_photo_params)

    respond_to do |format|
      if @user_comment_photo.save
        format.html { redirect_to @user_comment_photo, notice: 'User comment photo was successfully created.' }
        format.json { render :show, status: :created, location: @user_comment_photo }
      else
        format.html { render :new }
        format.json { render json: @user_comment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_comment_photos/1
  # PATCH/PUT /user_comment_photos/1.json
  def update
    respond_to do |format|
      if @user_comment_photo.update(user_comment_photo_params)
        format.html { redirect_to @user_comment_photo, notice: 'User comment photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_comment_photo }
      else
        format.html { render :edit }
        format.json { render json: @user_comment_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_comment_photos/1
  # DELETE /user_comment_photos/1.json
  def destroy
    @user_comment_photo.destroy
    respond_to do |format|
      format.html { redirect_to user_comment_photos_url, notice: 'User comment photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_comment_photo
      @user_comment_photo = UserCommentPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_comment_photo_params
      params.require(:user_comment_photo).permit(:photo, :body, :user_id)
    end
end

class BlogPhotosController < ApplicationController
  before_action :set_blog_photo, only: [:show, :edit, :update, :destroy]

  # GET /blog_photos
  # GET /blog_photos.json
  def index
    @blog_photos = BlogPhoto.all
  end

  # GET /blog_photos/1
  # GET /blog_photos/1.json
  def show
  end

  # GET /blog_photos/new
  def new
    @blog_photo = BlogPhoto.new
  end

  # GET /blog_photos/1/edit
  def edit
  end

  # POST /blog_photos
  # POST /blog_photos.json
  def create
    @blog_photo = BlogPhoto.new(blog_photo_params)

    respond_to do |format|
      if @blog_photo.save
        format.html { redirect_to @blog_photo, notice: 'Blog photo was successfully created.' }
        format.json { render :show, status: :created, location: @blog_photo }
      else
        format.html { render :new }
        format.json { render json: @blog_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blog_photos/1
  # PATCH/PUT /blog_photos/1.json
  def update
    respond_to do |format|
      if @blog_photo.update(blog_photo_params)
        format.html { redirect_to @blog_photo, notice: 'Blog photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_photo }
      else
        format.html { render :edit }
        format.json { render json: @blog_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_photos/1
  # DELETE /blog_photos/1.json
  def destroy
    @blog_photo.destroy
    respond_to do |format|
      format.html { redirect_to blog_photos_url, notice: 'Blog photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_photo
      @blog_photo = BlogPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_photo_params
      params.require(:photo).permit(:image)
    end
end

class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "LEARNING CENTER", "/"
  # GET /blog_posts
  # GET /blog_posts.json
  def index

    search = params[:title].present? ? params[:title] : nil
    @video_posts = []
    @article_posts = []

    @blog_posts = BlogPost.all.order(created_at: :desc)
    @blog_posts = if search    
      BlogPost.search(search)
    else
      BlogPost.all.order(created_at: :desc)
    end

    @blog_posts.each do |blog|
      if blog.media_type == 'Video Post'
        @video_posts.push(blog)
      elsif blog.media_type == 'Blog Post'
        @article_posts.push(blog)
      end

    end
  end

  # GET /blog_posts/1
  # GET /blog_posts/1.json
  def show
    add_breadcrumb @blog_post.title.upcase, @blog_post.slug
    @blog_post = BlogPost.friendly.find(params[:id])
  end

  # GET /blog_posts/new
  def new
    @blog_post = BlogPost.new
  end

  # GET /blog_posts/1/edit
  def edit
  end

  # POST /blog_posts
  # POST /blog_posts.json
  def create
    @blog_post = BlogPost.new(blog_post_params)

    # respond_to do |format|
    @blog_post.save!
    redirect_to @blog_post
      # name: @blog_post.seo_title
      # BlogPost.reindex
      # format.html { redirect_to @blog_post, notice: 'Blog post was successfully created.' }
      # format.json { render :show, status: :created, location: @blog_post }
  end

  # PATCH/PUT /blog_posts/1
  # PATCH/PUT /blog_posts/1.json
  def update
    respond_to do |format|
      if @blog_post.update(blog_post_params)
        format.html { redirect_to @blog_post, notice: 'Blog post was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_post }
      else
        format.html { render :edit }
        format.json { render json: @blog_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_posts/1
  # DELETE /blog_posts/1.json
  def destroy
    @blog_post.destroy
    respond_to do |format|
      format.html { redirect_to blog_posts_url, notice: 'Blog post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog_post
      @blog_post = BlogPost.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_post_params
      params.require(:blog_post).permit(:media_type, :title, :main_image, :video_upload, :body, :seo_title, :seo_meta_description)
    end
end

class Api::PostsController < ApplicationController
  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def create
    @post = Post.new(
      user_id: params[:user_id],
      title: params[:title],
      body: params[:body],
      address: params[:address],
      image_url: params[:image_url],
    )
    if @post.save
      eval(params[:instrument_ids]).each do |instrument_id|
        InstrumentPost.create(
          post_id: @post.id,
          instrument_id: instrument_id,
        )
      end
      render "show.json.jb"
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @post = Post.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.user_id = params[:user_id] || @post.user_id
    @post.title = params[:title] || @post.title
    @post.body = params[:body] || @post.body
    @post.address = params[:address] || @post.address
    @post.image_url = params[:image_url] || @post.image_url

    if @post.save
      if params[:instrument_ids]
        @post.instrument_posts.destroy_all
        eval(params[:instrument_ids]).each do |instrument_id|
          InstrumentPost.create(
            post_id: @post.id,
            instrument_id: instrument_id,
          )
        end
      end
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    post = Post.find_by(id: params[:id])
    post.destroy
    render json: { message: "Post successfully destroyed." }
  end
end

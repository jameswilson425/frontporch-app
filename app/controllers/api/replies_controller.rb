class Api::RepliesController < ApplicationController
  def create
    @reply = Reply.new(
      user_id: params[:user_id],
      post_id: params[:post_id],
      body: params[:body],
    )
    if @reply.save
      render "show.json.jb"
    else
      render json: { errors: reply.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @reply = Reply.find_by(id: params[:id])
    @reply.user_id = params[:user_id] || @reply.user_id
    @reply.post_id = params[:post_id] || @reply.post_id
    @reply.body = params[:body] || @reply.body

    if @reply.save
      render "show.json.jb"
    else
      render json: { errors: @reply.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    reply = Reply.find_by(id: params[:id])
    reply.destroy
    render json: { message: "Reply successfully destroyed." }
  end
end

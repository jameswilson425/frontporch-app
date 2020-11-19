class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:show, :create]

  def create
    user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      bio: params[:bio],
      profile_image: params[:profile_image],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])

    @user.user_name = params[:user_name] || @user.user_name
    @user.email = params[:email] || @user.email
    if params[:password] && params[:password_confirmation]
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
    end
    @user.address = params[:address] || @user.address
    @user.bio = params[:bio] || @user.bio
    @user.profile_image = params[:profile_image] || @user.profile_image

    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: { message: "Profile successfully deleted!" }
  end
end

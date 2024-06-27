class UsersController < ApplicationController
  before_action :authenticate_user, only: [:show]

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @users = User.all
    render template: "users/index"
  end

  def show
    @user = current_user
    if @user
      render json: current_user
    else
      render json: {message: "Currently not signed in."}
    end
  end
end

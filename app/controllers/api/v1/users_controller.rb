class Api::V1::UsersController < ApplicationController
  before_action :requires_login, only: [:users_apps]
  before_action :requires_user_match, only: [:users_apps]

  def create
      @user = User.create(user_params)
    if @user
      token = generate_token

      render json: {
        token: token,
        id: @user.id
      }
    else
      render json: {
        errors: @user.errors.full_messages
      }, status: :unprocessable_entity
    end
  end

  def users_apps
    render json: @user.apps
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end

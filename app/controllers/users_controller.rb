class UsersController < ApplicationController
  def show
    user = find_user
    render json: user, include: :items, status: :ok
  end

  private

  def find_user
    User.find(params[:id])
  end
end

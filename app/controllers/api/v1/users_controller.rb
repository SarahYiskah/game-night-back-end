class Api::V1::UsersController < ApplicationController

  def create
    @user = User.new(name: params[:name], games_won: 0, games_played: 0, ranking: 'bronze', image: 'girl-1')
    if @user.save
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def show
    @user = User.find_by(name: params[:username])
    if @user
      render json: @user
    else
      render json: { errors: ['That username does not exist'] }
    end
  end


end

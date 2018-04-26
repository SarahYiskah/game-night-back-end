class Api::V1::RoomsController < ApplicationController

  def create
    @room = Room.new(name: params[:name], code: params[:code])
    if @room.save
      render json: @room, include: ["users"]
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def show
    @room = Room.find_by_id(params[:id])
    if @room
      render json: @room, include: ["users"]
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

end

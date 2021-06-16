class RoomsController < ApplicationController
  def index
    @room = Room.new
    @group = Group.find(params[:group_id])
    @rooms = @group.rooms.includes(:user)
  end

  def create
    @group = Group.find(params[:group_id])
    @room = @group.rooms.new(room_params)
    if @room.save
      redirect_to group_rooms_path(@group)
    else
      @rooms = @group.rooms.includes(:user)
      render :index
    end
  end

  private

  def room_params
    params.require(:room).permit(:text).merge(user_id: current_user.id)
  end
end

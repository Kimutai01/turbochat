class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all_except(current_user)
    @rooms = Room.public_rooms
  end
end

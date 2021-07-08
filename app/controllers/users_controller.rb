class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @user_reservations = current_user.reservations.where("start_time >= ?", DateTime.current).order(day: :asc)
    @visit_historys = current_user.reservations.where("start_time < ?", DateTime.current).where("start_time > ?", DateTime.current << 12).order(day: :desc)
  end
end

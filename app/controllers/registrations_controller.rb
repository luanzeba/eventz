class RegistrationsController < ApplicationController
  def create
    @user = User.find(registration_params[:user_id])
    @event = Event.find(registration_params[:event_id])

    @registration = Registration.new(user: @user, event: @event)
    if @registration.save
      redirect_to @event, notice: "You have successfully registered for #{@event.title}"
    else
      redirect_to @event, alert: "Something went wrong"
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to events_path, alert: "Invalid email or event"
  end

  private

  def registration_params
    params.require(:registration).permit(:user_id, :event_id)
  end
end

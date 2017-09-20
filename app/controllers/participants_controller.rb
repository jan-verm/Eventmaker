class ParticipantsController < ApplicationController
  def create
    @user = User.find(params[:user].permit(:userid)[:userid])
    @event = Event.find(params[:event_id])
    @participant = @event.participants.new()
    @participant.user = @user
    @participant.save
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @participant = @event.participants.find(params[:id])
    @participant.destroy
    redirect_to event_path(@event)
  end
end

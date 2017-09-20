class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user].permit(:userid)[:userid])
    @comment = @event.comments.create(params[:comment].permit(:text))
    @comment.user = @user
    @comment.date = Time.now()
    @comment.save()
    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:event_id])
    @comment = @event.comments.find(params[:id])
    @comment.destroy
    redirect_to event_path(@event)
  end

  def update
    @comment = Comment.find(params[:id])
    @event = Event.find(params[:event_id])
    if @comment.update(params[:comment].permit(:text, :date))
      @comment.update(date: Time.now())
      redirect_to event_path(@event)
    else
      render 'edit'
    end
  end

end

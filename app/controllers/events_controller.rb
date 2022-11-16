# frozen_string_literal: true

class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = event_type.events.new
  end

  def create
    @event = event_type.events.new(params.require(:event).permit(:started_on, :ended_on))

    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def event_type
    EventType.find(params[:event_type_id])
  end
end

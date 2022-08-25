# frozen_string_literal: true

class EventTypesController < ApplicationController
  def index
    @event_types = EventType.ordered
  end

  def new
    @event_type = EventType.new
  end

  def create
    @event_type = EventType.new(params.require(:event_type).permit(:name))

    if @event_type.save
      redirect_to @event_type
    else
      render :new
    end
  end

  def show
    @event_type = EventType.find(params[:id])
  end
end

# frozen_string_literal: true

class MinesController < ApplicationController
  def new
    @mine = event.mines.new
  end

  def create
    @mine = event.mines.new(params.require(:mine).permit(:column, :mineral_id, :scale))

    if @mine.save

      redirect_to event
    else
      render :new
    end
  end

  private

  def event
    Event.find(params[:event_id])
  end
end

class EventsController < ApplicationController
  def home
    @events = Event.all
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def add_user #edit
    @event = Event.find(params[:id])
    custom_arr = []
    User.all.each do |user|
      if !@event.users.include?(user)
        custom_arr << user
      end
    end
    @users = custom_arr
  end

  def adding_user #update
    @event = Event.find(params[:id])
    @users = params["user_ids"].map do |id|
      User.find(id)
    end
    @event.users << @users
    @event.users = @event.users.uniq
    if @event.save!
      redirect_to event_path(@event)
    else
      render :add_user
    end
  end

  def view_users
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy!
      redirect_to events_path
    else
      render :show
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :location_id,
      :category_id,
      :start_time,
      :end_time,
      user_ids: []
    )
  end
end

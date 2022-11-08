class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
     @event = Event.create(start_date: params[:start_date], duration: params[:duration], title: params[:time], description: params[:description], price: params[:price], location: params[:location])

     if @event.save
      puts "yes it's saved"
      redirect_to events_path
     else
      puts "no"
      render new
     end
  end

  def edit
  end
end

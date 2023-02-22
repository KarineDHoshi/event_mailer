class EventsController < ApplicationController
    def index
        @event = Event.all
    end

    def new
    end

    def edit 
    end

    def destroy
    end
 
end

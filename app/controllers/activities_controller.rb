class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :render_not_found_response
 wrap_parameters false
  #GET index /activities
    def index 
        activities = Activity.all 
        render json: activities, status: :ok
    end

    #GET show  activities/:id 
    def show 
        activity_needed = find_activity
        render json: activity_needed, status: :ok
    end

    #POST create /activies 
    def create 
        new_activity = activity_params
        render json: new_activity, status: :created
    end


    private

    def activity_params 
        Activity.create!(params.permit(:title,:venue,:event_date,:description))
    end

    def find_activity 
        Activity.find(params[:id])
    end

    def render_not_found_response 
        render json: { error: "Activity Not Found" }, status: :not_found
    end
end

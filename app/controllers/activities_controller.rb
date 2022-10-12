class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :render_not_found_response

    def index 
        activities = Activity.all 
        render json: activities, status: :ok
    end

    #GET show /:id 
    def show 
        activity_needed = find_activity
        render json: activity_needed, status: :ok
    end


    private

    def find_activity 
        Activity.find(params[:id])
    end

    def render_not_found_response 
        render json: { error: "Activity Not Found" }, status: :not_found
    end
end

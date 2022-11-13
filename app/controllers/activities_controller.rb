class ActivitiesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid,with: :render_record_invalid
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
        new_activity = Activity.create!(activity_params)
        render json: new_activity, status: :created
    end

    #PATCH update /:id
    def update 
        activity_for_update = find_activity
        activity_for_update.update!(activity_params)
        render json: activity_for_update, status: :accepted
    end

    #DELETE destroy 
    def destroy 
        activity_to_be_deleted = find_activity
        activity_to_be_deleted.destroy 
        head :no_content
    end


    private

    def activity_params 
        params.permit(:title,:venue,:event_date,:description)
    end

    def render_record_invalid(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def find_activity 
        Activity.find(params[:id])
    end

    def render_not_found_response 
        render json: { error: "Activity Not Found" }, status: :not_found
    end
end

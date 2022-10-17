class ActivityRegistrationsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response
    wrap_parameters false

    def create 
        activity = ActivityRegistration.create!(params.permit(:full_name,:contact, :activity_id)) 
        render json: activity, status: :created 
    end

    def index 
        registrations = ActivityRegistration.all 
        render json: registrations
    end

    private 
    def render_record_invalid_response(invalid) 
        render json: { errors: invalid.record.errors.full_messages},status: :unprocessable_entity
    end


end

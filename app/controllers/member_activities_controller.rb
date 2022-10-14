class MemberActivitiesController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid,with: :render_record_invalid_response
    wrap_parameters false

    #POST create 
    def create 
        new_member_activity = MemberActivity.create!(member_activities_params)
        member_activities = Activity.find_by(id:new_member_activity[:activity_id])
        render json: member_activities, status: :created
    end

    private
    def member_activities_params
        params.permit(:member_id, :activity_id)
    end

    def render_record_invalid_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }
    end
end

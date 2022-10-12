class CouncilsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :render_record_not_found_response 
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response

    wrap_parameters false
   #GET index 
    def index 
        council_members = Council.all 
        render json: council_members, status: :ok
    end

    #GET show 
    def show 
        council_member = find_council_member
        render json: council_member, status: :ok
    end

    #POST create 
    def create 
        new_council_member = Council.create!(council_member_params)
        member_info = Member.find_by(id:new_council_member[:member_id])
        render json: member_info, status: :created
    end

    #PATCH update /:id 
    def update 
        council_member_for_update = find_council_member 
        council_member_for_update.update!(council_member_params)
        render json: council_member_for_update, status: :accepted
    end

    #DELETE destroy /:id
    def destroy 
        delete_council = find_council_member 
        delete_council.destroy 
        head :no_content
    end

    private 
    def find_council_member 
        Council.find(params[:id])
    end

    def render_record_not_found_response 
        render json: { error: 'Council-member Not Found' }, status: :not_found
    end

    def render_record_invalid_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

    def council_member_params 
        params.permit(:member_id, :role,:responsibilities)
    end

end

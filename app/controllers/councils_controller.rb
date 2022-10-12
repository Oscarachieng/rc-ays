class CouncilsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound,with: :render_record_not_found_response 

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

    private 
    def find_council_member 
        Council.find(params[:id])
    end

    def render_record_not_found_response 
        render json: { error: 'Council-member Not Found' }, status: :not_found
    end

    def council_member_params 
        params.permit(:member_id, :role,:responsibilities)
    end

end

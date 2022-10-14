class MembersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid_response
wrap_parameters format: []

 #GET index
    def index 
        members = Member.all 
        render json: members, status: :ok
    end

  #GET show 
  def show 
    member = find_member 
    render json: member, status: :ok
  end   

#POST create 
   def create 
    new_member = Member.create!(member_params)
    render json: new_member, status: :created
   end

#PATCH update 

#DELETE destroy 
   def destroy 
     member_to_delete = find_member;
     member_to_delete.destroy
     head :no_content
   end

   # /me
   def show
    user = Member.find_by(id: session[:user_id])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  # logout 
  def destroy
    session.delete :user_id
    head :no_content
  end

   private 

   def member_params 
     params.permit(:first_name, :last_name, :estate, :password, :password_confirmation, :email)
   end

   def render_record_invalid_response(invalid) 
     render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
   end

   def find_member 
     Member.find(params[:id])
   end

   def render_record_not_found_response 
     render json: { error: "Record not Found" }, status: :not_found
   end


end

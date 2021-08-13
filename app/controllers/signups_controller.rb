class SignupsController < ApplicationController

    #POST /signups
    def create
        signup = Signup.new(signup_params)
        if signup.save
            render json: signup.activity
        else
            render json: {"errors": ["validation errors"]}
        end
    end

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end

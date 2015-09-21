class JobsController < ApplicationController

    def index
        @session = session[:user_id]
        @jobs = Job.where(user_id: params[:user_id]).order(created_at: :desc)   
        # @job_details = Job.find(params[:id])
    end

    def new
        @session = session[:user_id]
    end

    def create
        @job = Job.create(job_params)
        redirect_to job_path(@job)
    end

    def show
        @jobs = Job.where(user_id: session[:user_id]).order(created_at: :desc)
        @job = Job.find(params[:id])
        # render :partial => 'app_details', :object => @job
    end

    def update
        @job = Job.find(params[:id])
        @job.update(job_params)
        redirect_to job_path
    end

    private

    def job_params
        params.permit(:company, :title, :url, :app_date, :app_followup, :app_notes, :interview_date, :interviewer_name, :interviewer_email, :interview_followup, :interview_notes)
    end

end
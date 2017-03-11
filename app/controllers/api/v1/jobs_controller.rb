module Api::V1
  class JobsController < ApiController
    before_action :authenticate
    before_action :set_job, only: [:activate]

    def index
      @jobs = Job.all

      render json: @jobs
    end

    def create
      @job = Job.new(job_params)

      if @job.save
        render json: @job, status: :created, location: @job
      else
        render json: @job.errors, status: :unprocessable_entity
      end
    end

    def activate
      if @job.activate(job_params)
        render json: @job
      else
        render json: @job.errors, status: :unprocessable_entity
      end
    end

    private
      def set_job
        @job = Job.find(params[:id])
      end

      def job_params
        params.require(:job).permit(:partner_id, :title, :category_id, :expires_at)
      end
  end
end

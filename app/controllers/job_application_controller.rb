class JobApplicationsController < ApplicationController
  skip_forgery_protection

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    if @job_application.save
      redirect_to thanks_path
    else
      render "kp/joinourteam"
    end
  end

  private

  def job_application_params
    params.require(:job_application).permit(:name, :email, :phone, :position, :message)
  end
end

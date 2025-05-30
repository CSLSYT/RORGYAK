class JobApplicationsController < ApplicationController
  skip_forgery_protection  # Teszteléshez engedélyezi POST/CREATE kéréseket CSRF token nélkül

  def new
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new(job_application_params)

    if @job_application.save
      flash[:notice] = "Az önéletrajz sikeresen elküldve!"
      render "kp/joinourteam"
    else
      flash[:alert] = "Hiba történt a küldés során."
      render "kp/joinourteam"
    end
  end

  private

  def job_application_params
    params.require(:job_application).permit(:name, :email, :phone, :position, :document, :message)
  end
end

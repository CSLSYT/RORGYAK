class JobApplicationController < ApplicationController
  def create
     def create
    @job_application = JobApplication.new(params.permit(:name, :email, :phone, :position, :document, :message))
    if @job_application.save
      flash[:notice] = "Az önéletrajz sikeresen elküldve!"
      render "kp/joinourteam"
    else
      flash[:alert] = "Hiba történt a küldés során."
      render "kp/joinourteam"
    end
  end
  end

  def index
  end

  def show
  end
end

class KpController < ApplicationController
  skip_forgery_protection

  def reference
    render plain: "Referencia oldal"
  end

  def joinourteam
    @job_application = JobApplication.new
  end
end

class KpController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:reference]
  def home
  end

  def reference
    @works = Work.paginate(page: params[:page], per_page: 3)
  end

  def contact
  end

  def joinourteam
  end

  def about
  end

  def grants
  end
end

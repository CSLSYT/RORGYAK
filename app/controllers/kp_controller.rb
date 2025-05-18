class KpController < ApplicationController
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
